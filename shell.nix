{ pkgs ? import <nixpkgs> { } }:
let
  python = pkgs.python3.withPackages (pythonPackages: with pythonPackages; [
    inflect
    (
      # XXX phonemizer is only available as application
      phonemizer.override {
        buildPythonApplication = buildPythonPackage;
      }
    )
    pytorch
    scipy
    unidecode
  ]);
in
pkgs.mkShell {
  buildInputs = [ python ];
}
