{ config, lib, pkgs, ... }: {
  programs.xremap = {
    enable = true;
    withHyprland = true; 
  };
}
