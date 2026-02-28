{
  pkgs,
  ...
}:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs; [
    vagrant
    deploy-rs
    colmena
    nixos-anywhere

    # todoist # cli client
    todoist-electron # webapp client
    # planify # todoist-supported gui client

    unstable.idescriptor
    zed-editor

    blanket # ambinet audio player

    libheif

    openssl

    # unstable.beeper
    kubernetes-helm

    nix-fast-build
    namespace-cli

    # Web
    librewolf
    ungoogled-chromium
    google-chrome
    motrix

    # Office
    # libreoffice
    onlyoffice-desktopeditors

    # Communication
    discord
    # webcord
    # webcord-vencord
    # legcord

    # Screenshots
    flameshot

    # Monitor
    brightnessctl

    # flatpak
    # bottles

    # qutebrowser

    # signal-desktop
    localsend

    # openvpn
    # update-resolv-conf

    # anki
    # rustdesk

    opencommit
    # gemini-cli

    # jellyfin-web

    # qtscrcpy

    # materialgram

    # sysbench
    speedtest-go # internet speed cli

    # bootdev-cli

    # claws-mail

    # webcamoid # access laptop webcam

    # tridactyl-native # Native messenger for Tridactyl, a vim-like Firefox webextension

  ];

  programs.kdeconnect.enable = false;
}
