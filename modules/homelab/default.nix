{
  imports = [
    # COMMUNICATION
    # ./matrix

    # FINANCE & PRODUCTIVITY
    # ./actual.nix
    # ./firefly-iii.nix

    # MEDIA & STREAMING
    # ./animanga
    # ./jellyfin.nix
    # ./torrent

    # PHOTOS & DOCUMENTS
    ./immich.nix
    # ./paperless.nix

    # UTILITIES
    # ./adguardhome.nix
    # ./microbin.nix
    # ./searx.nix
  ];

  users.groups.media = { };

  systemd.tmpfiles.rules = [
    "d /data/media 0770 - media - -"
  ];
}
