{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # file manager
    thunar

    zip
    unrar

    xdg-desktop-portal-termfilechooser

    jmtpfs # mount phone

    glib # for gio trash
  ];
}
