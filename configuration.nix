{
  inputs,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  imports = [
    # CORE
    ./hardware-configuration.nix
    ./modules/sops.nix
    ./modules/nixos
    ./modules/nixpkgs
    ./modules/nh.nix
    ./modules/zsh.nix
    ./modules/stylix.nix
    ./modules/nix-ld.nix

    # SYSTEM UTILITIES
    ./modules/utils/zram.nix
    ./modules/appimage.nix
    ./modules/solaar.nix
    ./modules/android-tools.nix
    ./modules/adb.nix
    ./modules/mobile/mirroring.nix
    ./modules/udisks2.nix
    # ./modules/utils/corectrl.nix
    # ./modules/flatpak.nix

    # DEVELOPMENT
    ./modules/development
    ./modules/development/terminal.nix
    ./modules/development/neovim.nix
    ./modules/development/python
    ./modules/development/go.nix
    ./modules/development/rust.nix
    ./modules/development/php.nix
    ./modules/version-control/git.nix
    # ./modules/development/dotnet.nix

    # DATABASES
    ./modules/databases/postgresql
    # ./modules/databases/mongodb.nix
    # ./modules/databases/mariadb.nix

    # MEDIA
    ./modules/media/file-management.nix
    ./modules/media/pdf.nix
    ./modules/media/image/viewer.nix
    ./modules/media/image/editor.nix
    ./modules/media/video/players
    ./modules/media/video/editor.nix
    ./modules/media/music/players
    # ./modules/media/video/players/ytx.nix
    # ./modules/media/music/spicetify.nix

    # CLOUD & BACKUP
    ./modules/cloud/storage.nix
    ./modules/backup/restic.nix

    # PRODUCTION & CREATION
    ./modules/capture/obs-studio.nix
    ./modules/droidcam.nix

    # HARDWARE & PERIPHERALS
    ./modules/peripherals/kanata.nix
    # ./modules/peripherals/interception-tools.nix

    # DISPLAY & DESKTOP
    ./modules/environment/greetd.nix
    ./modules/environment/cosmic.nix
    ./modules/environment/niri
    ./modules/environment/hyprland.nix
    # ./modules/environment/plasma6.nix
    # ./modules/environment/dwm.nix
    # ./modules/environment/i3wm.nix

    # VIRTUALISATION & CONTAINERS
    ./modules/containerisation
    ./modules/virtualisation
    ./modules/virtualisation/waydroid.nix

    # PRODUCTIVITY
    ./modules/productivity.nix
    ./modules/gitwatch.nix

    # SELF-HOSTING
    ./modules/homelab
    ./modules/homelab/pihole.nix
    ./modules/homelab/traefik.nix
    ./modules/homelab/grafana.nix
    ./modules/homelab/ai/ollama.nix
    ./modules/ansible
    # ./modules/homelab/freenet.nix
    # ./modules/homelab/searx.nix
    # ./modules/homelab/blocky.nix
    # ./modules/homelab/adguardhome.nix
    # ./modules/homelab/freshrss.nix
    # ./modules/homelab/miniflux.nix
    # ./modules/nginx

    # SECURITY & AUTHENTICATION
    ./modules/authentication/gnome-keyring.nix
    # ./modules/authentication/kwallet.nix

    # GAMING
    # ./modules/gaming
    # ./modules/gaming/streaming.nix
    # ./modules/gaming/emulation.nix

    # DEVOPS
    # ./modules/prometheus
    # ./modules/grafana
    # ./modules/pay-respects.nix

    # OTHER (DISABLED)
    # ./modules/quickshell
  ];

  peripherals.kanata = {
    internalKeyboard.enable = true;
    rightUSBKeyboard.enable = true;
    leftUSBKeyboard.enable = true;
  };

  # Select unstable pkgs
  nixpkgs.config.packageOverrides = pkgs: {
    unstable = pkgs-unstable;
  };

  # Initially required by Nvidia Drivers
  nixpkgs.config.allowUnfree = true;

  # Home-manager
  home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = { inherit inputs; };
    users = {
      "tech1savvy" = import ./home-manager/home.nix;
    };
    backupFileExtension = "backup";
  };

  nix.settings = {
    substituters = [
      # "https://cache.saumon.network/proxmox-nixos"
    ];
    # trusted-public-keys = [ "proxmox-nixos:D9RYSWpQQC/msZUWphOY2I5RLH5Dd6yQcaHIuug7dWM=" ];
  };

  # Do not change to maintain backwards compatibility
  system.stateVersion = "24.11";
}
