{
  imports = [
    ./boot.nix
    ./networking.nix
    ./bluetooth.nix

    ./language.nix
    ./time-zone.nix
    ./audio.nix
    ./user.nix

    ./enable-flakes.nix
    ./swap.nix
  ];
}
