{pkgs, ...}: let
  unstable =
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/2fad6ea.tar.gz";
      sha256 = "14inw2gxia29f0qh9kyvdq9y1wcv43r4cc7fylz9v372z5chiamh";
    }) {
      system = pkgs.system;
      config = {
        allowUnfree = true;
      };
    };
in {
  environment.systemPackages = with pkgs; [
    # unstable.kiro
    unstable.rustc
    unstable.spotdl
  ];
}
