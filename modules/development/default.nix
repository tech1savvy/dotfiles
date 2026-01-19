{ pkgs, ... }:
{
  imports = [
    ./python
    ./dotnet.nix
    ./go.nix
  ];
  environment.systemPackages = with pkgs; [
    # api testing
    postman
    posting
    bruno
    bruno-cli

    # editors
    vscode
    # ai editors
    code-cursor

    # Node.js
    nodejs_22
    nodePackages.npm
    pnpm

    nodemon

    # mongoDB shell
    mongosh

    php

    # SQL Dashboard
    dbgate
    jetbrains.datagrip
    # java driver for postgresql
    postgresql_jdbc

    awscli2 # cmd: aws
    terraform # infrastucture as code
    aws-nuke

    web-ext # build, run, and test web extensions

    lazysql # https://youtu.be/9RArbqGOvsw

    rustc
    cargo

    go

    mycli # shell for sql databases

    wakatime-cli

    charm-freeze # code file to image

    # java
    jdk

    act # Github Actions Locally

    clang # gcc compiler frontend

    typescript # tsc, tsserver
  ];

  # mongoDB community edition
  services.mongodb = {
    # port: 27017
    enable = true;
    package = pkgs.mongodb-ce;
  };
  # systemd.services.mongodb.wantedBy = pkgs.lib.mkForce []; # make the service do not auto-start

  # mariadb: opensource drop-in repalcment for mysql
  services.mysql = {
    enable = false;
    package = pkgs.mariadb;
  };

  systemd.services.mysql.wantedBy = pkgs.lib.mkForce [ ]; # make the service do not auto-start
}
