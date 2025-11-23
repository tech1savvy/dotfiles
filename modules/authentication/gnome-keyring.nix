{pkgs, ...}: {

  services.gnome.gnome-keyring.enable = true;
  programs.seahorse.enable = true; # gui

  security.pam.services = {
    login = {
      enableGnomeKeyring = true;
    };
  };


  environment.systemPackages = with pkgs; [
    # gnome-keyring # authentication system
    # libsecret # requried library
  ];
}
