{
  config,
  inputs,
  pkgs,
  ...
}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = with pkgs.hyprlandPlugins; [
      # inputs.hyprland-virtual-desktops.packages.${pkgs.system}.virtual-desktops
      # inputs.hyprtasking.packages.${pkgs.system}.hyprtasking
    ];
    settings = {
      source = [

        # Aesthetics
        "./modules/aesthetics/animations.conf"
        "./modules/aesthetics/borders.conf"
        "./modules/aesthetics/decorations.conf"
        "./modules/aesthetics/gaps.conf"

        # Windows
        "./modules/layouts.conf"
        "./modules/app.conf"
        "./modules/scratchpads.conf"

        # Binds
        "./modules/binds/programs.conf"
        "./modules/binds/hardware.conf"
        "./modules/binds/navigation.conf"
        "./modules/binds/window.conf"

        # Submap
        "./modules/submaps/kbptr.conf"

        # Others
        "./modules/monitors.conf"
        "./modules/input.conf"
        "./modules/autostart.conf"
        "./modules/environment.conf"
        "./modules/misc.conf"

        # Plugins
        # "./plugins/hyprtasking.conf"
        # "./plugins/hyprwinwrap.conf"
        # "./plugins/hy3.conf"
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
    # wayneko
  ];
}
