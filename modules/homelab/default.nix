{
  imports = [
    # ./torrent
    # ./jellyfin.nix
    # ./animanga

    # ./firefly-iii.nix
    # ./actual.nix

    ./immich.nix
    ./paperless.nix

    # ./microbin.nix

    # ./adguardhome.nix

    ./searx.nix
  ];

  users.groups.media = {};

  systemd.tmpfiles.rules = [
    "d /data/media 0770 - media - -"
  ];
}
