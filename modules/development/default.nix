{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # tools
    firefox-devedition

    # api testing
    postman
    posting

    # editors
    vscode
    # ai editors
    code-cursor


    # Node.js
    nodejs_22
    nodePackages.npm
    pnpm

    # mongoDB shell
    mongosh

    php

    # SQL Dashboard
    # beekeeper-studio

    awscli2 # cmd: aws
    terraform # infrastucture as code
    aws-nuke

    nginx

    web-ext # build, run, and test web extensions

    lazysql # https://youtu.be/9RArbqGOvsw

    rustc
    cargo

    # python
    python313
    python313Packages.pip
    python313Packages.tkinter

    go

    mycli # shell for sql databases
  ];

  # mongoDB community edition
  services.mongodb = {
    enable = true;
    package = pkgs.mongodb-ce;
  };

  # mariadb: opensource drop-in repalcment for mysql
  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

  # postgresql
  services.postgresql = {
    enable = true;
    # ensureUsers = [
    #   {
    #     name = "tech1savvy";
    #     ensureClauses = {
    #       login = true;
    #       createdb = true;
    #     };
    #   }
    # ];
  };
}
