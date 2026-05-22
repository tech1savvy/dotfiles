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
    # BROWSERS
#     google-chrome
#     librewolf
#     ungoogled-chromium
    (vivaldi.override {
      proprietaryCodecs = true;
    })
    # qutebrowser
    # tridactyl-native # Native messenger for Tridactyl, a vim-like Firefox webextension

    # CLOUD & DEVOPS
#     cloudlens
#     colmena
#     deploy-rs
#     google-cloud-sdk
#     infracost
#     k9s # tui for kubernetes
#     kubernetes-helm
#     namespace-cli
#     nixos-anywhere
#     turso
#     turso-cli
#     vagrant

    # COMMUNICATION
    discord
#     localsend
    # unstable.beeper
    # claws-mail
    # legcord
    # materialgram
    # rustdesk
    # signal-desktop
    # webcord
    # webcord-vencord

    # DEVELOPMENT
#     bun
#     fabric-ai
    nix-fast-build
#     opencommit
#     zed-editor
    # unstable.idescriptor
    # unstable.opencode
    # unstable.opencode-desktop
    # bootdev-cli
    # gemini-cli

    # MEDIA & GRAPHICS
#     blanket # ambinet audio player
#     ffmpeg
#     libheif
#     motrix
    # jellyfin-web
    # webcamoid # access laptop webcam

    # PRODUCTIVITY
    anki
    bitwarden-desktop
#     newsflash
#     onlyoffice-desktopeditors
#     todoist-electron # webapp client
    # unstable.spacedrive
    # bottles
    # libreoffice
    # planify # todoist-supported gui client
    # todoist # cli client

    # SCREENSHOTS & CAPTURE
#     flameshot
#     grim
#     satty
#     shotman
#     slurp
#     wayfreeze

    # SYSTEM UTILITIES
    brightnessctl
    openssl
    speedtest-go # internet speed cli
    # openvpn
    # sysbench
    # update-resolv-conf
  ];

  programs.kdeconnect.enable = false;
}
