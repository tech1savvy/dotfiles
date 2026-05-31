{ c, ... }:
{
  settings.pulseaudio = {
    format = "{volume}% {icon}";
    "format-bluetooth" = "{volume}% {icon} ";
    "format-bluetooth-muted" = "<span color='#${c.base08}'>󰖁 </span>";
    "format-muted" = "<span color='#${c.base08}'>󰖁</span>";
    "format-icons" = {
      headphone = "";
      "hands-free" = "";
      headset = "";
      phone = "";
      portable = "";
      car = "";
      default = [
        ""
        " "
        " "
      ];
    };
    "on-click" = "pavucontrol";
  };

  style = ''
    #pulseaudio {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 0px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
