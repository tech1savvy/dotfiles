{
  config,
  pkgs,
  ...
}: {
  services.xserver = {
    enable = true;
    autorun = true;
    displayManager = {
      lightdm.enable = true;
      autoLogin = {
        enable = true;
        user = "tech1savvy"; # Your actual username set here
      };
      defaultSession = "none+i3";
    };
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        i3status
        rofi
        dunst
        alacritty
        nitrogen # Added missing nitrogen dependency
      ];
      configFile = pkgs.writeText "i3-config" ''
        # i3-gaps configuration
        gaps inner 10
        gaps outer 5

        # Keybindings (fully preserved)
        set $mod Mod4
        bindsym $mod+Return exec ${pkgs.alacritty}/bin/alacritty
        bindsym $mod+d exec ${pkgs.rofi}/bin/rofi -show drun

        # Auto-start (original commands intact)
        exec_always ${pkgs.dunst}/bin/dunst
        exec_always ${pkgs.nitrogen}/bin/nitrogen --restore
      '';
    };
  };
  programs.dconf.enable = true;

  system.nixos.label = "i3wm";
}
