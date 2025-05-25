{pkgs, ...}: {

  # Authentication system for gnome-keyring

  services.gnome.gnome-keyring.enable = true;
  security.pam.services.login.enableGnomeKeyring = true;


  environment.systemPackages = with pkgs; [
    
    gnome-keyring # authentication system
    seahorse # its gui
    libsecret # requried library
  ];
}
