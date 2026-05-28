{
  services.sonarr = {
    enable = true;
    group = "media";

    settings = {
      server = {
        port = 8989;
      };
    };
  };
}
