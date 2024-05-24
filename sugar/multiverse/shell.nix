{ pkgs ? import <nixpkgs> {} }:
 
 (pkgs.buildFHSUserEnv {
   name = "bazel-userenv-multiverse";
   targetPkgs = pkgs: [
     pkgs.bazel
     pkgs.glibc
     pkgs.gcc
   ];
 }).env
