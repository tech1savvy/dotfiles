{lib, ...}: {
  networking = {
    hostName = "nixos";

    networkmanager = {
      enable = true;
      # wifi.backend = "iwd"; # stops connecting to wifi
      wifi.powersave = true;
    };

    wireless.iwd.settings = {
      Network = {
        EnableIPv6 = true;
      };
      Settings = {
        AutoConnect = true;
      };
    };

    hosts = {
      # virtul machines
      "192.168.122.157" = ["puppet-master" "puppet-server"];
      "192.168.122.134" = ["puppet-agent"];
    };
  };

  # stop networkmanager from starting early at boot
  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkForce [];
}
