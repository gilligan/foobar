const detectIncomingRequest = require('./detectIncomingRequest');
const assert = require('assert');
const GithubApi = require('github');
const request = require('supertest');
const ping = require('ping');
const { Client: SSHClient } = require('ssh2');

describe('deploymate in dust staging cluster', function () {
    it('should be possible to reach the health endpoint', function (done) {
        request('http://mesos-proxy1.mes2.bot.hc.lan')
            .get('/deploymate/_health')
            .expect(200, 'running', done);
    });
});

describe('deploymate in dust production cluster', function () {
    it('should be possible to reach the health endpoint', function (done) {
        request('http://mesos-proxy.lb.tos.hc.lan')
            .get('/deploymate/_health')
            .expect(200, 'running', done);
    });
});

describe('public internet', function () {
    it('should be possible to ping the google DNS server', function (done) {
        const googleDNSServerIP = '8.8.8.8';

        ping.sys.probe(googleDNSServerIP, function (isAlive) {
            if (isAlive) {
                done(null);
            } else {
                done(new Error('Can’t reach google DNS server'));
            }
        });
    });
});

describe('docker-registry.hc.ag v2 REST API', function () {
    it('should be reachable from ci server', function (done) {
        request('http://docker-registry.hc.ag')
            .get('/v2/')
            .expect(200, done);
    });
});

describe('github.hc.ag SSH connection', function () {
    it('should be able to connect with a valid private key', function (done) {
        const secretsFileLocation = process.env.SECRETS_FILE; // eslint-disable-line no-process-env
        const secrets = require(secretsFileLocation);
        const connection = new SSHClient();
        let authenticated = false;

        connection.on('ready', function () {
            authenticated = true;
            connection.end();
        });
        connection.on('end', function () {
            assert.equal(authenticated, true, 'Authentication failed');
            done();
        });
        connection.on('error', done);

        const options = {
            host: 'github.hc.ag',
            port: 22,
            username: 'git',
            privateKey: secrets.gitSSHPrivateKey.privateKeyData,
            passphrase: secrets.gitSSHPrivateKey.passphrase
        };

        connection.connect(options);
    });
});

describe('github.hc.ag REST API', function () {
    it('should be reachable from ci server', function (done) {
        request('https://github.hc.ag')
            .get('/api/v3/meta')
            .expect('Content-Type', /json/)
            .expect(200, done);
    });
});

describe('Incoming requests from github.hc.ag', function () {
    const githubOrganization = 'dx';
    const repositoryName = 'ci-smoke-test';
    const hookId = 7993;

    function createGithubApi() {
        const api = new GithubApi({
            protocol: 'https',
            host: 'github.hc.ag',
            pathPrefix: '/api/v3'
        });

        api.authenticate({
            type: 'oauth',
            token: process.env.GITHUB_API_TOKEN // eslint-disable-line no-process-env
        });

        return api;
    }

    before(function (done) {
        const github = createGithubApi();

        github.repos.editHook({
            user: githubOrganization,
            repo: repositoryName,
            id: hookId,
            name: 'web',
            active: true,
            config: { url: 'http://ci.hcweb.aws.hc.lan:8080/github-webhook/' }
        }, done);
    });

    it('should receive github webhook ping event', function (done) {
        const config = {
            hostname: 'ci.hcweb.aws.hc.lan',
            port: 8080,
            url: 'github-webhook/',
            method: 'GET',
            timeout: 15000,
            srcHost: 'github.hc.ag'
        };
        const github = createGithubApi();

        detectIncomingRequest(config, function (error, detectedRequest) {
            assert.equal(error, null, 'Failed to detect expected incoming request in time.');
            assert.ok(detectedRequest);
            assert.equal(detectedRequest.headers['X-GitHub-Event'], 'ping');

            done();
        });

        github.repos.pingHook({
            user: githubOrganization,
            repo: repositoryName,
            id: hookId
        });
    });
});
