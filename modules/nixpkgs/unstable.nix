{pkgs, ...}: let
  unstable =
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
      sha256 = "16v3zigdz0308zmmmp6fk57m7y8m981r97a3glgqmr06x4kn447s";
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
