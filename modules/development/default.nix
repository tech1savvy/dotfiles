{ pkgs, ... }:
{
  imports = [
    ./python
    # ./dotnet.nix
    ./go.nix
    ./rust.nix
  ];
  environment.systemPackages = with pkgs; [
    # api testing
    # postman
    # posting
    bruno
    bruno-cli

    # editors
    vscode
    # ai editors
    # code-cursor

    # Node.js
    nodejs_22
    # nodePackages.npm
    pnpm

    nodemon

    # bun

    # mongoDB shell
    mongosh

    # php

    # SQL Dashboard
    # dbgate
    # jetbrains.datagrip
    # java driver for postgresql
    # postgresql_jdbc

    awscli2 # cmd: aws
    eksctl
    terraform # infrastucture as code
    # aws-nuke

    # web-ext # build, run, and test web extensions

    lazysql # https://youtu.be/9RArbqGOvsw

    # rustc
    # cargo

    # mycli # shell for sql databases

    wakatime-cli

    # charm-freeze # code file to image

    # java
    # jdk

    # act # Github Actions Locally

    # clang # gcc compiler frontend

    # typescript # tsc, tsserver

    kubectl
    minikube
  ];

}
