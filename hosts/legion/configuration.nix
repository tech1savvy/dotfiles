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

  nixpkgs.config.allowUnfree = true;

  # Allow pkgs.unstable
  nixpkgs.config.packageOverrides = pkgs: {
    unstable = pkgsUnstable;
  };

  home-manager.users."tech1savvy" = import ../../users/tech1savvy.nix;

  # Do not change to maintain backwards compatibility
  system.stateVersion = "24.11";
}
