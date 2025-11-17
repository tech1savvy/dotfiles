{
  pkgs,
  ...
}:{
  services.immich = {
    enable = true;

    port = 2283;
    host = "0.0.0.0";
    openFirewall = true;
  };

  services.postgresql = {
    extensions = with pkgs.postgresql16Packages; [ 
      pgvector
      # BUG: nixos-rebuild: undifned variable
      # vectorchord
    ];
    settings.shared_preload_libraries = [
      # "vchord"
    ];
  };

  environment.systemPackages = with pkgs; [
    # postgresql16Packages.vectorchord
  ];
}
