{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    
    vscode
    firefox-devedition
    postman
  ];

}
