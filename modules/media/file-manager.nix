{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # file manager
    kdePackages.dolphin
    kdePackages.ark

    xfce.thunar

    yazi
    xdg-desktop-portal-termfilechooser

    jmtpfs # mount phone
  ];
}
