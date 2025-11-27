{
  services.nginx = {
    enable = true;

    virtualHosts = {
      "searxng.localhost" = {
        locations."/" = {
          proxyPass = "http://localhost:8080";
        };
      };
    };
  };
}
