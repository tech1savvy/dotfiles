{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Image Viewers
    vimiv-qt
    # fim
    # feh
    imv
    # pqiv
  ];
}
