{ pkgs, ... }:
{
  services.immich = {
    enable = false;

    port = 2283;
    host = "0.0.0.0";
    openFirewall = true;
  };

  services.postgresql = {
    extensions = with pkgs.postgresql16Packages; [
      pgvector
      vectorchord
    ];
    settings.shared_preload_libraries = [
      "vchord"
    ];
  };
}
