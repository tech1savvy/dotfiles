{
  config,
  lib,
  pkgs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs; [
    #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    #  wget

    librewolf
    motrix

    libreoffice

    discord


    brightnessctl

    ungoogled-chromium

    flatpak
    bottles

    google-chrome

    qutebrowser

    signal-desktop
    localsend

    openvpn
    update-resolv-conf

    anki
    rustdesk

    opencommit
    gemini-cli

    jellyfin-web

    qtscrcpy

    materialgram

    # sysbench
  ];

  programs.kdeconnect.enable = true;
}
