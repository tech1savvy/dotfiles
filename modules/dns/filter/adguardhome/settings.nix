{
  # AdGuard Home configuration parameters mapped to services.adguardhome.settings
  # Wiki reference: https://github.com/AdguardTeam/AdGuardHome/wiki/Configuration#configuration-file

  theme = "auto";
  language = "en";

  safe_search = {
    enabled = true;
  };

  parental_enabled = true;
  safebrowsing_enabled = true;

  # ERROR: not getting applied
  # blocked_services = {
  #   ids = [ "youtube" ];
  #   schedule = {
  #     sun = { start = "17h"; end = "21h"; };
  #     mon = { start = "17h"; end = "21h"; };
  #     tue = { start = "17h"; end = "21h"; };
  #     wed = { start = "17h"; end = "21h"; };
  #     thu = { start = "17h"; end = "21h"; };
  #     fri = { start = "17h"; end = "21h"; };
  #     sat = { start = "17h"; end = "21h"; };
  #     time_zone = "Asia/Kolkata";
  #   };
  # };

  dns = {
    upstream_dns = [
      "185.228.168.10"
      "185.228.169.11"
    ];
    bootstrap_dns = [
      "1.1.1.1"
      "8.8.8.8"
    ];
  };
}
