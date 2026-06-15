{ config, lib, ... }:
with lib;
let
  cfg = config.dns.filter.adguardhome;
in
{
  options.dns.filter.adguardhome = {
    enable = mkEnableOption "AdGuard Home DNS server";
  };

  config = mkIf cfg.enable {
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
  };
}
