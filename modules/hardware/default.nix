{ ... }:
{
  imports = [
    ./solaar.nix
    ./udisks2.nix
    ./kanata.nix
    # ./interception-tools.nix
  ];

  peripherals.kanata = {
    internalKeyboard.enable = true;
    rightUSBKeyboard.enable = false;
    leftUSBKeyboard.enable = false;
  };
}
