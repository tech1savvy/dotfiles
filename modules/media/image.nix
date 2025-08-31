{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    vimiv-qt
  ];
}
