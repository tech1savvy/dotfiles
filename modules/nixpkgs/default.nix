{pkgs, ...}: {
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

    lazydocker

    brightnessctl
    btop

    ungoogled-chromium

    flatpak
    bottles

    google-chrome

    qutebrowser

    rofi-wayland

    kdePackages.kdeconnect-kde
    signal-desktop
    localsend

    openvpn
    update-resolv-conf

    anki
  ];
}
