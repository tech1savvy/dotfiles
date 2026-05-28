{

  services.traefik = {
    enable = true;

    staticConfigOptions = {
      log.level = "WARN";
      api = {
        dashboard = true;
      };
      entryPoints = {
        web = {
          address = ":80";
        };
        websecure = {
          address = ":443";
        };
      };
    };
    dynamicConfigOptions = {
      http = {
        routers = {
          searx = {
            rule = "Host(`searx.home`)";
            service = "searx";
            entryPoints = [ "web" ];
          };

          traefik-dashboard = {
            rule = "Host(`traefik.home`)";
            service = "api@internal";
            entryPoints = [ "web" ];
          };
        };
        services.searx.loadBalancer.servers = [ { url = "http://localhost:9999"; } ];
      };
    };
  };

  networking.firewall.allowedTCPPorts = [
    80
    443
  ];
}
