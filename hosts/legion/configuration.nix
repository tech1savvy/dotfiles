{
  inputs,
  pkgs,
  pkgs-unstable,
  ...
}:
{
  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-legion-16ach6h
    ./hardware.nix
    ../../build.nix
    ../../modules
  ];

  peripherals.kanata = {
    internalKeyboard.enable = true;
    rightUSBKeyboard.enable = false;
    leftUSBKeyboard.enable = false;
  };

  # Select unstable pkgs
  nixpkgs.config.packageOverrides = pkgs: {
    unstable = pkgs-unstable;
  };

  # Initially required by Nvidia Drivers
  nixpkgs.config.allowUnfree = true;

  # Home-manager
  home-manager = {
    # also pass inputs to home-manager modules
    extraSpecialArgs = { inherit inputs; };
    users = {
      "tech1savvy" = import ../../home-manager/home.nix;
    };
    backupFileExtension = "backup";
  };

  # Do not change to maintain backwards compatibility
  system.stateVersion = "24.11";
}
