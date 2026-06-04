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
    ./utils/zram.nix
    #     ./appimage.nix
    #     ./android-tools.nix
    # ./adb.nix # REMOVED
    ./mobile/mirroring.nix
    # ./utils/corectrl.nix
    # ./flatpak.nix

    # DEVELOPMENT
    ./dev
    ./agents

    # DATABASES
    # ./databases

    # MEDIA
    ./media

    # CLOUD & BACKUP
    ./cloud/storage.nix
    ./backup/restic.nix

    # PRODUCTION & CREATION
    ./capture

    # HARDWARE & PERIPHERALS
    ./hardware

    # DISPLAY & DESKTOP
    ./environment

    # VIRTUALISATION & CONTAINERS
    ./containerisation
    ./virtualisation

    # PRODUCTIVITY
    #     ./productivity.nix
    ./gitwatch.nix

    # SELF-HOSTING
    ./lab
    #     ./ansible
    # ./nginx

    # SECURITY & AUTHENTICATION
    ./authentication

    # GAMING
    # ./gaming

    # DEVOPS
    # ./prometheus
    # ./grafana
    # ./pay-respects.nix

    # OTHER (DISABLED)
    # ./quickshell
    # ./kdeconnect.nix
  ];
}
