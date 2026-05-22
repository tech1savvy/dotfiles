{
  imports = [
    # CORE
    ./sops.nix
    ./nixos
    ./nixpkgs
    ./zsh.nix
    ./stylix.nix
    ./nix-ld.nix
    ./home-manager.nix

    # SYSTEM UTILITIES
#     ./utils/zram.nix
#     ./appimage.nix
#     ./solaar.nix
#     ./android-tools.nix
    ./adb.nix
    ./mobile/mirroring.nix
    ./udisks2.nix
    # ./utils/corectrl.nix
    # ./flatpak.nix

    # DEVELOPMENT
    ./development

    # DATABASES
#     ./databases/postgresql
    # ./databases/mongodb.nix
    # ./databases/mariadb.nix

    # MEDIA
    ./media/file-management.nix
#     ./media/pdf.nix
#     ./media/image/viewer.nix
#     ./media/image/editor.nix
#     ./media/video/players
#     ./media/video/editor.nix
#     ./media/music/players
    # ./media/video/players/ytx.nix
    # ./media/music/spicetify.nix

    # CLOUD & BACKUP
    ./cloud/storage.nix
    ./backup/restic.nix

    # PRODUCTION & CREATION
    ./capture/obs-studio.nix
#     ./droidcam.nix

    # HARDWARE & PERIPHERALS
    ./peripherals/kanata.nix
    # ./peripherals/interception-tools.nix

    # DISPLAY & DESKTOP
    ./environment/greetd.nix
#     ./environment/cosmic.nix
#     ./environment/niri
    ./environment/hyprland.nix
    # ./environment/plasma6.nix
    # ./environment/dwm.nix
    # ./environment/i3wm.nix

    # VIRTUALISATION & CONTAINERS
#     ./containerisation
#     ./virtualisation
#     ./virtualisation/waydroid.nix

    # PRODUCTIVITY
#     ./productivity.nix
    ./gitwatch.nix

    # SELF-HOSTING
#     ./homelab
#     ./homelab/pihole.nix
#     ./homelab/traefik.nix
#     ./homelab/grafana.nix
#     ./homelab/ai/ollama.nix
#     ./ansible
    # ./homelab/freenet.nix
    # ./homelab/searx.nix
    # ./homelab/blocky.nix
    # ./homelab/adguardhome.nix
    # ./homelab/freshrss.nix
    # ./homelab/miniflux.nix
    # ./nginx

    # SECURITY & AUTHENTICATION
    ./authentication/gnome-keyring.nix
    # ./authentication/kwallet.nix

    # GAMING
    # ./gaming
    # ./gaming/streaming.nix
    # ./gaming/emulation.nix

    # DEVOPS
    # ./prometheus
    # ./grafana
    # ./pay-respects.nix

    # OTHER (DISABLED)
    # ./quickshell
  ];
}
