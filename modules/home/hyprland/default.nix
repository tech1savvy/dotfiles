{
  config,
  inputs,
  pkgs,
  ...
}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
    plugins = with pkgs.hyprlandPlugins; [
      # inputs.hyprland-virtual-desktops.packages.${pkgs.system}.virtual-desktops
      # inputs.hyprtasking.packages.${pkgs.system}.hyprtasking
    ];

    extraConfig = builtins.readFile ./hyprland.lua;
  };

  home.file = {
    ".config/hypr/kando.lua" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/hypr/kando.lua";
    };
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
