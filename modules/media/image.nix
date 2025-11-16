{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Image Viewers
    vimiv-qt
    # fim
    # feh
    imv
    # pqiv

    # Paint Tools
    # pinta
    # gimp

    # Simple Editors
    kdePackages.gwenview

    # screenshots
    flameshot
  ];
}
