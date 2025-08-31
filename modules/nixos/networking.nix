{
  networking = {
    hostName = "nixos";# Define your hostname.
    # Pick only one of the below networking options.
    networkmanager.enable = true;# Enable NetworkManager
    wireless.enable = false; # Disable wpa_supplicant

    # virtul machines
    hosts = {
      "192.168.122.157" = ["puppet-master"];
      "192.168.122.134" = ["puppet-agent"];
    };
  };
}
