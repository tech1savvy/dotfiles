{ pkgs, ... }:
{
  imports = [
    ./nix
    ./json
    ./terminal.nix
    ./neovim.nix
    ./go.nix
    ./rust.nix
    #     ./php.nix
    ../version-control/git.nix
    # ./dotnet.nix
  ];

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
    terraform # infrastructure as code
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
