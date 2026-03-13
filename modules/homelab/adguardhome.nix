{ config, ... }:
{
  networking.nameservers = [
    "127.0.0.1"
  ];

  services.adguardhome = {
    enable = true;

    port = 533;
    host = "127.0.0.1";
    openFirewall = false;

    allowDHCP = config.services.adguardhome.settings.dhcp.enabled or false;
    mutableSettings = true;
  };
}
