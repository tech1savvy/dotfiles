{pkgs, ...}: let
  unstable =
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
      sha256 = "0z423v1f4pyllhqz68jichams2vrgnmply12lzkvj6k4hijkvnaa";
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
