{ lib, ... }:
{
  networking = {
    hostName = "nixos";

    nameservers = [
      "127.0.0.1" # for pihole
    ];

    networkmanager = {
      enable = true;
      # wifi.backend = "iwd"; # stops connecting to wifi

      wifi = {
        powersave = false;
        macAddress = "random";
        scanRandMacAddress = true;
      };

      # insertNameservers = [
      #   "127.0.0.1"
      # ];
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
      "127.0.0.1" = [
        "searx.home"
        "traefik.home"
      ];
    };

    hostFiles = [

    ];

    firewall = {
      enable = false;
      allowedTCPPorts = [
        80 # http
        443 # https

        3000
        2283 # immich

        # moonlight
      ];

      allowedUDPPorts = [
        # moonlight
        47999
        48000
        48010
      ];
    };
  };

  networking.stevenblack = {
    enable = false; # disabled in-favor of pihole

    whitelist = [
      # "instagram.com"
      # "reddit.com"
    ];

    block = [
      "fakenews"
      "gambling"
      "porn"
      "social"
    ];
  };

  # stop networkmanager from starting early at boot
  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkForce [ ];
}
