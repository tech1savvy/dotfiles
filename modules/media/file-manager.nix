{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # file manager
    kdePackages.dolphin
    kdePackages.ark

    xfce.thunar
  ];
}
