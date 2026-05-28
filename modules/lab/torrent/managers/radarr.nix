{
  services.radarr = {
    enable = true;
    group = "media";

    settings = {
      server = {
        port = 7878;
      };
    };
  };
}
