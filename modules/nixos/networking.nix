{
  networking.hostName = "nixos"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = false;  # Disable wpa_supplicant
  networking.networkmanager.enable = true; # Enable NetworkManager
}
