{
  inputs,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix

    ./modules/sops.nix
    ./modules/nixos
    ./modules/nixpkgs
    ./modules/nh.nix
    ./modules/zsh.nix

    # -- Core Utils --
    ./modules/version-control/git.nix

    # -- System Utils --
    ./modules/utils/zram.nix
    # ./modules/utils/corectrl.nix

    ./modules/stylix.nix

    ./modules/appimage.nix
    ./modules/solaar.nix
    ./modules/android-tools.nix
    ./modules/adb.nix

    # development
    ./modules/development
    ./modules/development/terminal.nix
    ./modules/development/neovim.nix
    ./modules/development/python
    ./modules/development/go.nix
    ./modules/development/rust.nix
    ./modules/development/php.nix
    # ./modules/development/dotnet.nix
    # databases
    ./modules/databases/postgresql
    # ./modules/databases/mongodb.nix # FIX: Fails to start
    # ./modules/databases/mariadb.nix

    # -- Media --
    ./modules/media/file-management.nix
    ./modules/media/pdf.nix
    ./modules/media/image/viewer.nix
    ./modules/media/image/editor.nix
    ./modules/media/video/players
    ./modules/media/video/editor.nix
    # ./modules/media/video/players/ytx.nix
    ./modules/media/music/players
    # ./modules/media/music/spicetify.nix

    # --- Prodoction ---
    ./modules/capture/obs-studio.nix

    # -- Peripherals --
    ./modules/peripherals/kanata.nix
    # ./modules/peripherals/interception-tools.nix

    # -- Display/Lockscreen Managers --
    ./modules/environment/greetd.nix

    # -- Desktop Environments --
    ./modules/environment/plasma6.nix
    # ./modules/environment/cosmic.nix

    # -- Window Managers --
    ./modules/environment/niri
    ./modules/environment/hyprland.nix
    # ./modules/environment/dwm.nix
    # ./modules/environment/i3wm.nix

    # gaming
    # ./modules/gaming
    # ./modules/gaming/streaming.nix
    # ./modules/gaming/emulation.nix

    # productivity
    ./modules/productivity.nix
    ./modules/nh.nix
    ./modules/containerisation
    ./modules/virtualisation
    ./modules/virtualisation/waydroid.nix
    # ./modules/homelab
    # ./modules/nginx

    # ./modules/ansible

    # ./modules/pay-respects.nix

    # devops
    # ./modules/prometheus
    # ./modules/grafana

    # ./modules/cloud/storage.nix

    ./modules/authentication/gnome-keyring.nix
    # ./modules/authentication/kwallet.nix

    # ./modules/quickshell
    # ./modules/droidcam.nix

    # ./modules/homelab/freenet.nix
    ./modules/homelab/searx.nix
    # ./modules/homelab/blocky.nix
    ./modules/homelab/pihole.nix
    ./modules/homelab/k3s
    ./modules/homelab/traefik.nix

    ./modules/nix-ld.nix
    ./modules/gitwatch.nix
  ];

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
