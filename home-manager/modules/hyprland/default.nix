{
  config,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = [
      # inputs.hyprland-virtual-desktops.packages.${pkgs.system}.virtual-desktops
    ];
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
        # "./plugins/hyprexpo.conf"
        # "./plugins/virtual-desktops.conf"
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
