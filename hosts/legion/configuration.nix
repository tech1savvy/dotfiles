{
  inputs,
  pkgsUnstable,
  ...
}:
{
  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-legion-16ach6h
    ./hardware.nix
    ../../build.nix
    ../../modules
  ];

  # Select unstable pkgs
  nixpkgs.config.packageOverrides = pkgs: {
    unstable = pkgsUnstable;
  };

  # Initially required by Nvidia Drivers
  nixpkgs.config.allowUnfree = true;

  home-manager.users."tech1savvy" = import ../../users/tech1savvy.nix;

  # Do not change to maintain backwards compatibility
  system.stateVersion = "24.11";
}
