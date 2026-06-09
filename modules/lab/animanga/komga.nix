{
  services.komga = {
    enable = false;

    openFirewall = true;

    group = "media";
    settings = {
      server = {
        port = 4010;
      };
    };
  };
}
