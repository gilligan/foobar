# This file has been generated by node2nix 1.0.0. Do not edit!

{nodeEnv, fetchurl, fetchgit}:

let
  sources = {
    "github-2.3.0" = {
      name = "github";
      packageName = "github";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/github/-/github-2.3.0.tgz";
        sha1 = "4ba706c0e461b189ad368c851c141fc42a39a414";
      };
    };
    "http-parser-js-0.4.3" = {
      name = "http-parser-js";
      packageName = "http-parser-js";
      version = "0.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-parser-js/-/http-parser-js-0.4.3.tgz";
        sha1 = "89da65699a7f5eacd57d4ff93f0d104b1a960046";
      };
    };
    "mocha-2.5.3" = {
      name = "mocha";
      packageName = "mocha";
      version = "2.5.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/mocha/-/mocha-2.5.3.tgz";
        sha1 = "161be5bdeb496771eb9b35745050b622b5aefc58";
      };
    };
    "pcap-git://github.com/lo1tuma/node_pcap#c19d3888e60afdf1f7605491e066c5d6db3febe9" = {
      name = "pcap";
      packageName = "pcap";
      version = "2.0.0";
      src = fetchgit {
        url = "git://github.com/lo1tuma/node_pcap";
        rev = "c19d3888e60afdf1f7605491e066c5d6db3febe9";
        sha256 = "0m9b65jg5qkrh2bafcgv394np21mrlk6gyy8akgqzszcac1mz1zd";
      };
    };
    "ssh2-0.5.0" = {
      name = "ssh2";
      packageName = "ssh2";
      version = "0.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssh2/-/ssh2-0.5.0.tgz";
        sha1 = "8e501f95c16337e21fae2ac0c6e5e77354b00799";
      };
    };
    "supertest-1.2.0" = {
      name = "supertest";
      packageName = "supertest";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supertest/-/supertest-1.2.0.tgz";
        sha1 = "850a795f9068d2faf19e01799ff09962e0ce43be";
      };
    };
    "ping-0.1.10" = {
      name = "ping";
      packageName = "ping";
      version = "0.1.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/ping/-/ping-0.1.10.tgz";
        sha1 = "ff9706cc7f9485432f21f67eb71e719716b350d4";
      };
    };
    "follow-redirects-0.0.7" = {
      name = "follow-redirects";
      packageName = "follow-redirects";
      version = "0.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/follow-redirects/-/follow-redirects-0.0.7.tgz";
        sha1 = "34b90bab2a911aa347571da90f22bd36ecd8a919";
      };
    };
    "https-proxy-agent-1.0.0" = {
      name = "https-proxy-agent";
      packageName = "https-proxy-agent";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/https-proxy-agent/-/https-proxy-agent-1.0.0.tgz";
        sha1 = "35f7da6c48ce4ddbfa264891ac593ee5ff8671e6";
      };
    };
    "mime-1.3.4" = {
      name = "mime";
      packageName = "mime";
      version = "1.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
        sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
      };
    };
    "debug-2.2.0" = {
      name = "debug";
      packageName = "debug";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
        sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
      };
    };
    "stream-consume-0.1.0" = {
      name = "stream-consume";
      packageName = "stream-consume";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/stream-consume/-/stream-consume-0.1.0.tgz";
        sha1 = "a41ead1a6d6081ceb79f65b061901b6d8f3d1d0f";
      };
    };
    "ms-0.7.1" = {
      name = "ms";
      packageName = "ms";
      version = "0.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
        sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
      };
    };
    "agent-base-2.0.1" = {
      name = "agent-base";
      packageName = "agent-base";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/agent-base/-/agent-base-2.0.1.tgz";
        sha1 = "bd8f9e86a8eb221fffa07bd14befd55df142815e";
      };
    };
    "extend-3.0.0" = {
      name = "extend";
      packageName = "extend";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
        sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
      };
    };
    "semver-5.0.3" = {
      name = "semver";
      packageName = "semver";
      version = "5.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.0.3.tgz";
        sha1 = "77466de589cd5d3c95f138aa78bc569a3cb5d27a";
      };
    };
    "commander-2.3.0" = {
      name = "commander";
      packageName = "commander";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.3.0.tgz";
        sha1 = "fd430e889832ec353b9acd1de217c11cb3eef873";
      };
    };
    "diff-1.4.0" = {
      name = "diff";
      packageName = "diff";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
        sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
      };
    };
    "escape-string-regexp-1.0.2" = {
      name = "escape-string-regexp";
      packageName = "escape-string-regexp";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.2.tgz";
        sha1 = "4dbc2fe674e71949caf3fb2695ce7f2dc1d9a8d1";
      };
    };
    "glob-3.2.11" = {
      name = "glob";
      packageName = "glob";
      version = "3.2.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-3.2.11.tgz";
        sha1 = "4a973f635b9190f715d10987d5c00fd2815ebe3d";
      };
    };
    "growl-1.9.2" = {
      name = "growl";
      packageName = "growl";
      version = "1.9.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/growl/-/growl-1.9.2.tgz";
        sha1 = "0ea7743715db8d8de2c5ede1775e1b45ac85c02f";
      };
    };
    "jade-0.26.3" = {
      name = "jade";
      packageName = "jade";
      version = "0.26.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/jade/-/jade-0.26.3.tgz";
        sha1 = "8f10d7977d8d79f2f6ff862a81b0513ccb25686c";
      };
    };
    "mkdirp-0.5.1" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    };
    "supports-color-1.2.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-1.2.0.tgz";
        sha1 = "ff1ed1e61169d06b3cf2d588e188b18d8847e17e";
      };
    };
    "to-iso-string-0.0.2" = {
      name = "to-iso-string";
      packageName = "to-iso-string";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-iso-string/-/to-iso-string-0.0.2.tgz";
        sha1 = "4dc19e664dfccbe25bd8db508b00c6da158255d1";
      };
    };
    "inherits-2.0.1" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      };
    };
    "minimatch-0.3.0" = {
      name = "minimatch";
      packageName = "minimatch";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-0.3.0.tgz";
        sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
      };
    };
    "lru-cache-2.7.3" = {
      name = "lru-cache";
      packageName = "lru-cache";
      version = "2.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
        sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
      };
    };
    "sigmund-1.0.1" = {
      name = "sigmund";
      packageName = "sigmund";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
        sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
      };
    };
    "commander-0.6.1" = {
      name = "commander";
      packageName = "commander";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-0.6.1.tgz";
        sha1 = "fa68a14f6a945d54dbbe50d8cdb3320e9e3b1a06";
      };
    };
    "mkdirp-0.3.0" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.0.tgz";
        sha1 = "1bbf5ab1ba827af23575143490426455f481fe1e";
      };
    };
    "minimist-0.0.8" = {
      name = "minimist";
      packageName = "minimist";
      version = "0.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    };
    "nan-2.4.0" = {
      name = "nan";
      packageName = "nan";
      version = "2.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.4.0.tgz";
        sha1 = "fb3c59d45fe4effe215f0b890f8adf6eb32d2232";
      };
    };
    "socketwatcher-0.3.0" = {
      name = "socketwatcher";
      packageName = "socketwatcher";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/socketwatcher/-/socketwatcher-0.3.0.tgz";
        sha1 = "49e5614058fcaab19d640b374225a4eea4b4b78a";
      };
    };
    "ssh2-streams-0.1.5" = {
      name = "ssh2-streams";
      packageName = "ssh2-streams";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssh2-streams/-/ssh2-streams-0.1.5.tgz";
        sha1 = "17c121e82ac940343a07391d489fcb321cd1a0fb";
      };
    };
    "streamsearch-0.1.2" = {
      name = "streamsearch";
      packageName = "streamsearch";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/streamsearch/-/streamsearch-0.1.2.tgz";
        sha1 = "808b9d0e56fc273d809ba57338e929919a1a9f1a";
      };
    };
    "asn1-0.2.3" = {
      name = "asn1";
      packageName = "asn1";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      };
    };
    "semver-5.3.0" = {
      name = "semver";
      packageName = "semver";
      version = "5.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      };
    };
    "superagent-1.8.3" = {
      name = "superagent";
      packageName = "superagent";
      version = "1.8.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/superagent/-/superagent-1.8.3.tgz";
        sha1 = "2b7d70fcc870eda4f2a61e619dd54009b86547c3";
      };
    };
    "methods-1.1.2" = {
      name = "methods";
      packageName = "methods";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
        sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
      };
    };
    "qs-2.3.3" = {
      name = "qs";
      packageName = "qs";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-2.3.3.tgz";
        sha1 = "e9e85adbe75da0bbe4c8e0476a086290f863b404";
      };
    };
    "formidable-1.0.17" = {
      name = "formidable";
      packageName = "formidable";
      version = "1.0.17";
      src = fetchurl {
        url = "https://registry.npmjs.org/formidable/-/formidable-1.0.17.tgz";
        sha1 = "ef5491490f9433b705faa77249c99029ae348559";
      };
    };
    "component-emitter-1.2.1" = {
      name = "component-emitter";
      packageName = "component-emitter";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    };
    "cookiejar-2.0.6" = {
      name = "cookiejar";
      packageName = "cookiejar";
      version = "2.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/cookiejar/-/cookiejar-2.0.6.tgz";
        sha1 = "0abf356ad00d1c5a219d88d44518046dd026acfe";
      };
    };
    "reduce-component-1.0.1" = {
      name = "reduce-component";
      packageName = "reduce-component";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/reduce-component/-/reduce-component-1.0.1.tgz";
        sha1 = "e0c93542c574521bea13df0f9488ed82ab77c5da";
      };
    };
    "form-data-1.0.0-rc3" = {
      name = "form-data";
      packageName = "form-data";
      version = "1.0.0-rc3";
      src = fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-1.0.0-rc3.tgz";
        sha1 = "d35bc62e7fbc2937ae78f948aaa0d38d90607577";
      };
    };
    "readable-stream-1.0.27-1" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "1.0.27-1";
      src = fetchurl {
        url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.27-1.tgz";
        sha1 = "6b67983c20357cefd07f0165001a16d710d91078";
      };
    };
    "async-1.5.2" = {
      name = "async";
      packageName = "async";
      version = "1.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/async/-/async-1.5.2.tgz";
        sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
      };
    };
    "combined-stream-1.0.5" = {
      name = "combined-stream";
      packageName = "combined-stream";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
        sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
      };
    };
    "mime-types-2.1.11" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.11.tgz";
        sha1 = "c259c471bda808a85d6cd193b430a5fae4473b3c";
      };
    };
    "delayed-stream-1.0.0" = {
      name = "delayed-stream";
      packageName = "delayed-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    };
    "mime-db-1.23.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.23.0.tgz";
        sha1 = "a31b4070adaea27d732ea333740a64d0ec9a6659";
      };
    };
    "core-util-is-1.0.2" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    };
    "isarray-0.0.1" = {
      name = "isarray";
      packageName = "isarray";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    };
    "string_decoder-0.10.31" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "0.10.31";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    };
    "q-1.4.1" = {
      name = "q";
      packageName = "q";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/q/-/q-1.4.1.tgz";
        sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
      };
    };
  };
  args = {
    name = "smoke-test";
    packageName = "smoke-test";
    version = "0.0.0-dev";
    src = ./.;
    dependencies = [
      sources."github-2.3.0"
      sources."http-parser-js-0.4.3"
      sources."mocha-2.5.3"
      sources."pcap-git://github.com/lo1tuma/node_pcap#c19d3888e60afdf1f7605491e066c5d6db3febe9"
      sources."ssh2-0.5.0"
      sources."supertest-1.2.0"
      sources."ping-0.1.10"
      sources."follow-redirects-0.0.7"
      sources."https-proxy-agent-1.0.0"
      sources."mime-1.3.4"
      sources."debug-2.2.0"
      sources."stream-consume-0.1.0"
      sources."ms-0.7.1"
      sources."agent-base-2.0.1"
      sources."extend-3.0.0"
      sources."semver-5.0.3"
      sources."commander-2.3.0"
      sources."diff-1.4.0"
      sources."escape-string-regexp-1.0.2"
      sources."glob-3.2.11"
      sources."growl-1.9.2"
      (sources."jade-0.26.3" // {
        dependencies = [
          sources."commander-0.6.1"
          sources."mkdirp-0.3.0"
        ];
      })
      sources."mkdirp-0.5.1"
      sources."supports-color-1.2.0"
      sources."to-iso-string-0.0.2"
      sources."inherits-2.0.1"
      sources."minimatch-0.3.0"
      sources."lru-cache-2.7.3"
      sources."sigmund-1.0.1"
      sources."minimist-0.0.8"
      sources."nan-2.4.0"
      sources."socketwatcher-0.3.0"
      (sources."ssh2-streams-0.1.5" // {
        dependencies = [
          sources."semver-5.3.0"
        ];
      })
      sources."streamsearch-0.1.2"
      sources."asn1-0.2.3"
      sources."superagent-1.8.3"
      sources."methods-1.1.2"
      sources."qs-2.3.3"
      sources."formidable-1.0.17"
      sources."component-emitter-1.2.1"
      sources."cookiejar-2.0.6"
      sources."reduce-component-1.0.1"
      sources."form-data-1.0.0-rc3"
      sources."readable-stream-1.0.27-1"
      sources."async-1.5.2"
      sources."combined-stream-1.0.5"
      sources."mime-types-2.1.11"
      sources."delayed-stream-1.0.0"
      sources."mime-db-1.23.0"
      sources."core-util-is-1.0.2"
      sources."isarray-0.0.1"
      sources."string_decoder-0.10.31"
      sources."q-1.4.1"
    ];
    meta = {
      description = "Smoke test to check if all necessary network connections can be made.";
    };
    production = true;
  };
in
{
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}