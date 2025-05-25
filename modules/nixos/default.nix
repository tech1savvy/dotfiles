{
  imports = [
    ./boot.nix
    ./networking.nix
    ./bluetooth.nix

    ./current-config.nix

    ./language.nix
    ./time-zone.nix
    ./audio.nix
    ./user.nix

    ./enable-flakes.nix
    ./swap.nix
  ];
}
