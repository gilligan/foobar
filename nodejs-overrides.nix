{ pkgs ? import <nixpkgs> {} }:

let
  nodePackages = import ./nodejs.nix { inherit pkgs; };
in
  nodePackages // {
    "pcap-git://github.com/lo1tuma/node_pcap#c19d3888e60afdf1f7605491e066c5d6db3febe9" = nodePackages."pcap-git://github.com/lo1tuma/node_pcap#c19d3888e60afdf1f7605491e066c5d6db3febe9".override (oldAttrs: {
      buildInputs = oldAttrs.buildInputs ++ [ pkgs.libpcap ];
    });

  }
