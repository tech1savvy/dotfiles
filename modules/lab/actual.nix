{
  services.actual = {
    enable = true;

    openFirewall = false;

    settings = {
      port = 3000;
      hostname = "0.0.0.0"; # listens to all IPv6
    };
  };
}
