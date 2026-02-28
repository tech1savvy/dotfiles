{ pkgs, ... }:
{
  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = false; # gui

  security.pam.services = {
    login = {
      enableGnomeKeyring = true;
    };
  };
}
