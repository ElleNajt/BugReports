{ pkgs ? import <nixpkgs> { } }:

let pythonEnv = pkgs.python3.withPackages (ps: with ps; [ ]);
in pkgs.mkShell { buildInputs = [ pythonEnv ]; }
