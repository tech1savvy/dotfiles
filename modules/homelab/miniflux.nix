{
  services.miniflux = {
    enable = true;

    config = {
      LISTEN_ADDR = "localhost:888";
      CREATE_ADMIN = false;
    };
    # adminCredentialsFile = "";
  };
}
