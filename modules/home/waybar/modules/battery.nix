{
  settings.battery = {
    states = {
      warning = 30;
      critical = 15;
    };
    format = "{capacity}% {icon}";
    "format-full" = "{capacity}% {icon}";
    "format-charging" = "{capacity}% ";
    "format-plugged" = "{capacity}% ";
    "format-alt" = "{time} {icon}";
    "format-icons" = [
      ""
      ""
      ""
      ""
      ""
    ];
  };

  style = ''
    #battery {
      background: @base0B;
      border: 1px solid @base02;
      color: @base00;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }

    #battery.warning,
    #battery.critical,
    #battery.urgent {
      background: @base01;
      border: 1px solid @base02;
      color: @base08;
    }
  '';
}
