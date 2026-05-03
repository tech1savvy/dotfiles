{ lib, ... }: {
  networking.networkmanager = {
    enable = true;
    # wifi.backend = "iwd"; # stops connecting to wifi

    wifi = {
      powersave = false;
      macAddress = "random";
      scanRandMacAddress = true;
    };
  };

  networking.wireless.iwd.settings = {
    Network = {
      EnableIPv6 = true;
    };
    Settings = {
      AutoConnect = true;
    };
  };

  # stop networkmanager from starting early at boot
  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkForce [ ];
}
