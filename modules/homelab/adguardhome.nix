{ config, ... }:
{
  services.adguardhome = {
    enable = true;

    port = 8080;
    host = "127.0.0.1";
    openFirewall = false;

    allowDHCP = config.services.adguardhome.settings.dhcp.enabled or false;
    mutableSettings = false;
  };
}
