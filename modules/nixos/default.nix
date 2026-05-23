{
  imports = [
    ./boot
    ./networking
    ./bluetooth.nix

    ./fonts.nix
    ./language.nix
    ./time-zone.nix
    ./audio.nix
    ./user.nix

    ./enable-flakes.nix
  ];
}
