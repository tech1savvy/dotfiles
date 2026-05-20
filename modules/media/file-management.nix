{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # file manager
    xfce.thunar

    zip
    unrar

    xdg-desktop-portal-termfilechooser

    jmtpfs # mount phone

    glib # for gio trash
  ];
}
