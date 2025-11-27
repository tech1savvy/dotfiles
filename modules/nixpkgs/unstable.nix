{pkgs, ...}: let
  unstable =
    import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
      sha256 = "1zb5ca8jqavb19j7g06a41jg6bvpr20b9lihvham6qywhgaqprz9";
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
