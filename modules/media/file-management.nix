{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # file manager
    xfce.thunar

    zip

    xdg-desktop-portal-termfilechooser

    jmtpfs # mount phone

    glib # for gio trash
  ];
}
