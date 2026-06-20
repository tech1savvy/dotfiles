{ pkgs, ... }:
{
  imports = [
    ./nix
    ./json
    ./go.nix
    ./ruby.nix
    ./rust.nix
    ./php.nix
    ./dotnet.nix
    ./terraform.nix
  ];

  development = {
    go.enable = true;
    ruby.enable = true;
    rust.enable = true;
    nix.enable = true;
    json.enable = true;
    terraform.enable = true;
    php.enable = false;
    dotnet.enable = false;
  };

  environment.systemPackages = with pkgs; [
    # API TESTING
    bruno
    # bruno-cli
    # postman
    # posting

    # DATABASES
    lazysql # https://youtu.be/9RArbqGOvsw
    mongosh
    # dbgate
    # jetbrains.datagrip
    # mycli
    # postgresql_jdbc

    # EDITORS & IDEs
    vscode
    # code-cursor

    # INFRASTRUCTURE & DEVOPS
    awscli2 # cmd: aws
    eksctl
    kubectl
    minikube
    # act # Github Actions Locally
    # aws-nuke

    # LANGUAGES & RUNTIMES
    nodejs_22
    nodemon
    pnpm
    # bun
    # cargo
    # clang # gcc compiler frontend
    # jdk
    # nodePackages.npm
    # rustc
    # typescript # tsc, tsserver

    # UTILITIES
    just
    wakatime-cli
    # charm-freeze # code file to image
    # web-ext # build, run, and test web extensions
  ];
}
