const pcap = require('pcap');
const { HTTPParser } = require('http-parser-js');

function throwError(error) {
    throw error;
}

function noop() {}

function createPcapFilter(config) {
    return `(port ${config.port}) and (src host ${config.srcHost}) and (ip proto \\tcp)`;
}

function stop(timerId, sessions) {
    clearTimeout(timerId);
    sessions.forEach((session) => session.close());
}

function detectIncomingRequestForDevice(device, config, onRequestDetected) {
    const pcapSession = pcap.createSession(device, createPcapFilter(config));
    const tracker = new pcap.TCPTracker();

    pcapSession.on('packet', function (rawPacket) {
        const packet = pcap.decode.packet(rawPacket);
        tracker.track_packet(packet);
    });

    pcapSession.on('error', throwError);
    tracker.on('error', throwError);

    tracker.on('session', function (tcpSession) {
        tcpSession.on('error', throwError);

        if (tcpSession.dst === `${config.hostname}:${config.port}`) {
            const requestParser = new HTTPParser(HTTPParser.REQUEST);

            tcpSession.on('data send', function (session, chunk) {
                requestParser.execute(chunk, 0, chunk.length);
            });

            requestParser.onHeadersComplete = function (request) {
                if (request.method === config.method && request.url === config.url) {
                    onRequestDetected(request);
                }
            };

            requestParser.onMessageComplete = noop;
            requestParser.onError = throwError;
        }
    });

    return pcapSession;
}

module.exports = function detectIncomingRequest(config, callback) {
    let sessions; // eslint-disable-line prefer-const

    const timerId = setTimeout(function () {
        stop(timerId, sessions);
        callback(new Error('Timeout: expected request was not detected in time'));
    }, config.timeout);

    const devices = pcap.findalldevs();
    const activeDevices = devices.filter(({ addresses }) => addresses.length > 0);

    function onRequestDetected(request) {
        stop(timerId, sessions);
        callback(null, request);
    }

    sessions = activeDevices.map(({ name }) => detectIncomingRequestForDevice(name, config, onRequestDetected));
};
