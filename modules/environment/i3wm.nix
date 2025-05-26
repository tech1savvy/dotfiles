# i3.nix
{ config, pkgs, ... }:

{
  services.xserver.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    extraPackages = with pkgs; [
      i3status
      rofi
      dunst
      alacritty
    ];
    configFile = pkgs.writeText "i3-config" ''
      # i3-gaps configuration
      gaps inner 10
      gaps outer 5

      # Keybindings
      set $mod Mod4
      bindsym $mod+Return exec ${pkgs.alacritty}/bin/alacritty
      bindsym $mod+d exec ${pkgs.rofi}/bin/rofi -show drun

      # Auto-start
      exec_always ${pkgs.dunst}/bin/dunst
      exec_always ${pkgs.nitrogen}/bin/nitrogen --restore
    '';
  };

  programs.dconf.enable = true;  # For GTK app consistency
}
