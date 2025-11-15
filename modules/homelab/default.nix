{
  imports = [
    ./torrent

    ./jellyfin.nix
    ./immich.nix
    ./animanga

    # ./firefly-iii.nix
    ./actual.nix

    # ./microbin.nix
  ];

    users.groups.media = { };

    systemd.tmpfiles.rules = [
      "d /data/media 0770 - media - -"
    ];
}
