let
  nixpkgsTarball = "https://github.com/holidaycheck/nixpkgs/tarball/963be934dcb84beb4e037ba2f704fa335bec4494";
  pkgs = import (builtins.fetchTarball nixpkgsTarball) {};
  nodeDeps = (import ./nodejs-overrides.nix { inherit pkgs; }).shell.nodeDependencies;
in
  pkgs.stdenv.mkDerivation {
    src = ./.;
    name = "hc-web-ci-smoke-test";
    buildInputs = with pkgs; [ iputils libpcap python nodejs-6_x ];
    installPhase = ''
      mkdir -p $out/bin
      ln -sv ${nodeDeps}/lib/node_modules $out/bin/node_modules
      cp *.json *.js hc-web-ci-smoke-test $out/bin
    '';
  }
