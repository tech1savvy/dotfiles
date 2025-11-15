{
  services.komga = {
    enable = true;

    openFirewall = true;

    group = "media";
    settings = {
      server = {
        port = 4010;
      };
    };
  };
}
