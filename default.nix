{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "free-as-in-freedom-v2-ru";

  version = "0.99.5";

  src = ./.;

  FONTCONFIG_FILE = pkgs.makeFontsConf {
    fontDirectories = [ pkgs.liberation_ttf ];
  };

  LANG = "C.UTF-8";

  buildInputs = with pkgs; [
    git utillinux gnumake
    texlive.combined.scheme-full rubber
    pandoc
  ];

  installPhase = ''
    mkdir -p $out
    cp faif-2.0.{fb2,pdf} $out/
  '';
}
