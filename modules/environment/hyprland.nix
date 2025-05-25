{
  config,
  pkgs,
  ...
}: {
  # Enable Hyprland Wayland compositor
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  # Enable Display Manager
  services.greetd.enable = true;
  services.greetd.settings.default_session = {
    command = "uwsm start hyprland-uwsm.desktop";
    user = "tech1savvy";
};

  environment.sessionVariables = {
    # If your cursor becomes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
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

    # taskbar
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
    }))
    # pomodoro timer
    uair #guide: https://thenegation.com/posts/pomodoro-waybar-uair/

    # notificaiton daemon
    swaynotificationcenter
    # dependencies
    libnotify # capture notifications and send to daemon
    # gvfs # opening links or files from notifications

    # hyprland's default terminal
    kitty

    # app launcher
    wofi

    # network gui
    networkmanagerapplet

    # normal file manager
    kdePackages.dolphin
    # missing kde dependcies for non-kde setups
    kdePackages.qtsvg # SCG icon suppot
    kdePackages.breeze-icons # breeze icon theme

    kdePackages.breeze

    # take screenshots
    hyprshot
    # dependencies
    grim # for screenshots
    slurp # for selecting regions
    wl-clipboard # for clipboard support
    jq # for JSON parsing
    libnotify # for notifications
    hyprpicker # (optional, for freeze-screen feature)

    # lock-screen
    hyprlock

    # idle to sleep or hibrnation
    hypridle

    # wallpaper daemon
    hyprpaper

    # gui-config editor
    hyprgui
  ];

  fonts.packages = with pkgs; [
    font-awesome # default for waybar
    nerdfonts # for swaync
  ];

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [
    pkgs.xdg-desktop-portal-gtk
  ];

  system.nixos.label = "Hyprland";
}
