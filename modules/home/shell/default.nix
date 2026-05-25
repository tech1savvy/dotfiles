{
  imports = [
    ./alias.nix
    ./variables.nix
    ./path.nix
  ];

  home.shell.enableBashIntegration = true;
}
