{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # tools
    vscode
    firefox-devedition

    postman
    posting

    # Node.js
    nodejs_22
    nodePackages.npm

    # mongoDB shell
    mongosh

    php

    # SQL Dashboard
    # beekeeper-studio
    mysql-workbench

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

    puppetserver
  ];

  # mongoDB community edition
  services.mongodb = {
    enable = true;
    package = pkgs.mongodb-ce;
  };
}
