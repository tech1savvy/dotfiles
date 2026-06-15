{ config, lib, ... }:
with lib;
{
  imports = [
    ./adguardhome
    ./pihole
  ];

  config = mkIf (config.dns.filter.adguardhome.enable || config.dns.filter.pihole.enable || config.dns.filter.blocky.enable) {
    networking.nameservers = [
      "127.0.0.1"
    ];
  };
}
