{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vimiv-qt

    # screenshots
    flameshot
  ];
}
