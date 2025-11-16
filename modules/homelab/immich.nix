{
  services.immich = {
    enable = true;

    port = 2283;
    host = "0.0.0.0";
    openFirewall = true;
  };

  services.postgresql = {
    extensions = ps: with ps; [ 
      pgvector
      # BUG: nixos-rebuild: undfined variable
      # vectorchord
    ];
    settings.shared_preload_libraries = [
      "vchord"
    ];
  };
}
