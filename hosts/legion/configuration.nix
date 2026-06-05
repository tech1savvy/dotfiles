{
  inputs,
  pkgsStable,
  ...
}:
{
  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-legion-16ach6h-hybrid
    ./hardware.nix
    ../../build.nix
    ../../modules
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "electron-39.8.10"
  ];

  # Allow pkgs.stable
  nixpkgs.config.packageOverrides = pkgs: {
    stable = pkgsStable;
  };

  home-manager.users."tech1savvy" = import ../../users/tech1savvy.nix;

  # Do not change to maintain backwards compatibility
  system.stateVersion = "24.11";
}
