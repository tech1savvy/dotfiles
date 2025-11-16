{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # viewer
    vimiv-qt
    imv

    # screenshots
    flameshot

    # editor
    kdePackages.gwenview
  ];
}
