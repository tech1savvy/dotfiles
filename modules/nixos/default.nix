{
  imports = [
    ./boot
    ./networking
    ./bluetooth.nix
    ./power.nix

    ./fonts.nix
    ./language.nix
    ./time-zone.nix
    ./audio.nix
    ./user.nix

    ./enable-flakes.nix
  ];
}
