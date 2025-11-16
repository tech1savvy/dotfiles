{
  programs.hyprpanel = {
    enable = false;

    dontAssertNotificationDaemons = true; # hyprpanle built-in notification daemon is buggy
    systemd.enable = true;

    settings = {
      bar.battery.label = true;
      bar.bluetooth.label = true;
      bar.clock.format = "%H:%M:%S";
      bar.layouts = {
        "*" = {
          left = [
            "dashboard"
            "workspaces"
            "media"
          ];
          middle = ["windowtitle"];
          right = [
            "volume"
            "network"
            "bluetooth"
            "notifications"
          ];
        };
      };
    };
  };
}
