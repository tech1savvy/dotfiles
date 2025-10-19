{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
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

    nodemon

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

    # rustc # installing unstable pkg for lastest version
    cargo

    # python
    python313
    # pkg managers
    python313Packages.pip
    python313Packages.pipx
    python313Packages.uv
    # common libraries/pkgs
    python313Packages.tkinter

    go

    mycli # shell for sql databases

    wakatime-cli

    charm-freeze # code file to image

    # java
    jdk
  ];

  # mongoDB community edition
  services.mongodb = {
    enable = false;
    package = pkgs.mongodb-ce;
  };
  systemd.services.mongodb.wantedBy = pkgs.lib.mkForce []; # make the service do not auto-start

  # mariadb: opensource drop-in repalcment for mysql
  services.mysql = {
    enable = false;
    package = pkgs.mariadb;
  };

  systemd.services.mysql.wantedBy = pkgs.lib.mkForce []; # make the service do not auto-start

  # postgresql
  services.postgresql = {
    enable = true;
    # default user: $ sudo -u postgres psql
    # active user(our-case its tech1savvy): $ psql
    # ensureUsers = [
    #   {
    #     name = "tech1savvy";
    #     ensureClauses = {
    #       login = true;
    #       createdb = true;
    #     };
    #   }
    # ];
    # ensureDatabases = [ "tech1savvy" ];
  };
  systemd.services.postgresql.wantedBy = pkgs.lib.mkForce []; # make the service do not auto-start
}
