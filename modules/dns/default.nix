{ config, ... }:
let
  anyFilterEnabled =
    config.dns.filter.adguardhome.enable
    || config.dns.filter.pihole.enable
    || config.dns.filter.blocky.enable;
in
{
  imports = [
    ./filter
  ];

  dns.filter.adguardhome.enable = false;
  dns.filter.pihole.enable = false;
  dns.filter.blocky.enable = true;

  networking.nameservers =
    if anyFilterEnabled then
      [
        "127.0.0.1"
      ]
    else
      [ ];

  networking.networkmanager.insertNameservers =
    if anyFilterEnabled then
      [
        "127.0.0.1"
      ]
    else
      [
        "185.228.168.10"
        "185.228.169.11"
      ];
}
