{
  imports = [
    ./filter
  ];

  dns.filter.adguardhome.enable = true;
  dns.filter.pihole.enable = false;
}
