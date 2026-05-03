{
  networking = {
    hostName = "nixos";

    hosts = {
      "127.0.0.1" = [
        "searx.home"
        "traefik.home"
        "rancher.home"
        "grafana.home"
        "freshrss.home"
      ];
      "140.82.121.3" = [
        "github.com"
      ];
    };

    hostFiles = [

    ];
  };
}
