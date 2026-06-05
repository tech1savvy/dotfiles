{
  pkgs,
  ...
}:
{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    # If your cursor becomes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";

    # PLUGINS
    # thread: https://discourse.nixos.org/t/installing-hyprlands-plugins-package-without-home-manager/65971
    HYPR_PLUGIN_DIR = pkgs.symlinkJoin {
      name = "hyprland-plugins";
      paths = with pkgs.hyprlandPlugins; [
        # hyprwinwrap
        # hyprscrolling
        # hy3
        # hyprexpo
        # hyprspace
        # hypr-dynamic-cursors
      ];
    };
  };

  hardware = {
    # Opengl
    graphics.enable = true;

    # Most wayland compositors need this
    nvidia.modesetting.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # session manager
    uwsm

    # pomodoro timer
    uair # guide: https://thenegation.com/posts/pomodoro-waybar-uair/

    # notificaiton daemon
    swaynotificationcenter
    # dependencies
    libnotify # capture notifications and send to daemon
    # gvfs # opening links or files from notifications

    # network gui
    networkmanagerapplet

    # normal file manager
    kdePackages.dolphin
    # missing kde dependcies for non-kde setups kdePackages.qtsvg # SCG icon suppot
    kdePackages.breeze-icons # breeze icon theme

    kdePackages.breeze

    # clipboard
    wl-clipboard

    # color picker
    hyprpicker

    # gui-config editor
    # hyprgui

    # music player control
    playerctl

    # pyprland
    pyprland

    wl-kbptr # keyboard overlay
    wlrctl # for mouse movements
  ];

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [
    pkgs.xdg-desktop-portal-gtk
  ];
}
