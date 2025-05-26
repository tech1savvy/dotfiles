# dwm.nix
{ config, pkgs, ... }:

let
  dwmCustom = pkgs.dwm.overrideAttrs (oldAttrs: {
    src = pkgs.fetchFromGitHub {
      owner = "your-github-username";
      repo = "dwm";
      rev = "your-commit-hash";
      sha256 = "sha256-0000000000000000000000000000000000000000000000000000"; # Use nix-prefetch-url
    };
    patches = [
      (pkgs.fetchpatch {
        url = "https://dwm.suckless.org/patches/awesomebar/dwm-awesomebar-6.4.diff";
        sha256 = "sha256-0000000000000000000000000000000000000000000000000000";
      })
    ];
    configFile = pkgs.writeText "config.h" ''
      #define MODKEY Mod4
      #define TERMINAL "alacritty"
      ${builtins.readFile ./dwm-config.h}  # Your custom config.h
    '';
    postPatch = ''
      cp ${configFile} config.h
    '';
  });
in {
  services.xserver.windowManager.dwm = {
    enable = true;
    package = dwmCustom;
  };

  environment.systemPackages = with pkgs; [
    dmenu  # Required for dwm's default dmenu binding
  ];
}
