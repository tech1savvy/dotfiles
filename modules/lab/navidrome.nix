{
  services.navidrome = {
    enable = true;
    group = "media";
    openFirewall = true;

    settings = {
      Port = 4533;
      Address = "127.0.0.1";

      MusicFolder = "/data/media";
    };
  };
}
