{
  settings."custom/timer" = {
    exec = "~/bin/waybar_timer hook";
    "exec-on-event" = false;
    "return-type" = "json";
    format = "{icon} {0}";
    "format-icons" = {
      standby = "🔴";
      running = "🟢";
      paused = "🟡";
    };
    "on-click" = "~/bin/waybar_timer new 90 'notify-send \"Session finished\"'";
    "on-click-middle" = "~/bin/waybar_timer cancel";
    "on-click-right" = "~/bin/waybar_timer togglepause";
    "on-scroll-up" = "~/bin/waybar_timer increase 60 || ~/bin/waybar_timer new 1 'notify-send -u critical \"Timer expired\"'";
    "on-scroll-down" = "~/bin/waybar_timer decrease 60";
  };

  style = ''
    .timer {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 150px;
      padding: 1px 6px;
    }
  '';
}
