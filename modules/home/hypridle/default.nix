{
  services.hypridle = {
    enable = false;

    settings = {
      general = {
        after_sleep_cmd = "hyprctl dispatch dpms on";
        ignore_dbus_inhibit = false;
        lock_cmd = "pidof hyprlock || hyprlock";
      };

      listener = [

        {
          timeout = 120;
          on-timeout = "notify-send 'u there?'";
          on-resume = "notify-send 'boys, he's alive!'";
        }

        {
          timeout = 900;
          on-timeout = "hyprlock";
        }
        {
          timeout = 1200;
          on-timeout = "hyprctl dispatch dpms off"; # tells the display to turn off or go in low power mode
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
  };
}
