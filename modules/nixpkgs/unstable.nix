{pkgs, ...}: let
  unstable =
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
      sha256 = "18g0f8cb9m8mxnz9cf48sks0hib79b282iajl2nysyszph993yp0";
    }) {
      system = pkgs.system;
      config = {
        allowUnfree = true;
      };
    };
in {
  environment.systemPackages = with pkgs; [
    # stable packages here
    # unstable.kiro # from unstable channel
    unstable.rustc
    unstable.spotdl
  ];
  # rest of your config...
}
