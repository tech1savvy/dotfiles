{
  imports = [
    ./boot.nix
    ./networking.nix
    ./bluetooth.nix

    ./fonts.nix
    ./language.nix
    ./time-zone.nix
    ./audio.nix
    ./user.nix

    ./enable-flakes.nix
    ./swap.nix
  ];
}
