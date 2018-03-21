{ bootstrap ? import <nixpkgs> { } }:

let

  nixpkgs = builtins.fromJSON (builtins.readFile ./nixpkgs.json);

  src = bootstrap.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    inherit (nixpkgs) rev sha256;
  };

  pkgs = import src {};
  
  doc-browser-pkg = import ./doc-browser.nix { inherit pkgs; c2hs = pkgs.haskellPackages.c2hs; qt = pkgs.qt5Full; };
in 
  with pkgs; 
  { doc-browser = doc-browser-pkg.doc-browser; }
