{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "free-as-in-freedom-v2-ru";

  buildInputs = with pkgs; [
    git utillinux gnumake
    texlive.combined.scheme-full rubber
    pandoc
  ];
}
