{config,...}:{
  services.adguardhome = {
    enable = false;

    port = 3000;
    host = "0.0.0.0";
    openFirewall = false;

    allowDHCP = config.services.adguardhome.settings.dhcp.enabled or false;
    mutableSettings = true;
  };
}
