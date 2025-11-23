{config,pkgs,...}:{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      source = [
      "./modules/programs.conf"
      "./modules/aesthetics.conf"
      "./modules/autostart.conf"
      "./modules/environment.conf"
      "./modules/input.conf"
      "./modules/keybindings.conf"
      "./modules/monitors.conf"
      "./modules/windowrules.conf"
      "./modules/workspaces.conf"

      "./modules/kbptr.conf"

      # plugins
      # "./plugins/hyprwinwrap.conf"
      # "./plugins/hyprscrolling.conf"
      "./plugins/hy3.conf"
      "./plugins/hyprexpo.conf"
      ];
    };
  };


  home.file = {
    ".config/hypr/modules" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/hypr/modules";
      recursive = true;
    };
    ".config/hypr/plugins" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/hypr/plugins";
      recursive = true;
    };
    ".config/hypr/pyprland.toml" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/hypr/pyprland.toml";
    };
  };


  home.packages = with pkgs; [
    kitty
    wayneko
  ];
}
