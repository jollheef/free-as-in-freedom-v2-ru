{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "free-as-in-freedom-v2-ru";

  FONTCONFIG_FILE = pkgs.makeFontsConf {
    fontDirectories = [ pkgs.liberation_ttf ];
  };

  buildInputs = with pkgs; [
    git utillinux gnumake
    texlive.combined.scheme-full rubber
    pandoc
  ];

  shellHook = ''
    export LANG=C.UTF-8
  '';
}
