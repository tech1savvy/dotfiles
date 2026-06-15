{
  imports = [
    # COMMUNICATION
    # ./matrix

    # FINANCE & PRODUCTIVITY
    # ./actual.nix
    # ./firefly-iii.nix

    # MEDIA & STREAMING
    ./animanga
    # ./jellyfin.nix
    # ./torrent

    # PHOTOS & DOCUMENTS
    ./immich.nix
    # ./paperless.nix

    # SECURITY & NETWORK
    # ./freenet.nix
    # ./traefik.nix

    # MONITORING
    # ./grafana.nix

    # AI
    # ./ai/ollama.nix

    # SYNDICATION
    # ./freshrss.nix
    # ./miniflux.nix
    # ./searx.nix

    # UTILITIES
    # ./microbin.nix
  ];

  users.groups.media = { };

  systemd.tmpfiles.rules = [
    "d /data/media 0770 - media - -"
  ];
}
