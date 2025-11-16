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
      
      "127.0.0.1:8096" = [ "jellyfin.tech1savvy.com"];
    };
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



  # stop networkmanager from starting early at boot
  systemd.services.NetworkManager-wait-online.wantedBy = lib.mkForce [];
}
