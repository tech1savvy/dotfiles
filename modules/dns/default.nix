{
  imports = [
    ./filter
  ];

  dns.filter.adguardhome.enable = false;
  dns.filter.pihole.enable = false;
  dns.filter.blocky.enable = true;
}
