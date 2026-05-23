{
  settings.clock = {
    "tooltip-format" = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    "format-alt" = "{:%Y-%m-%d}";
  };

  style = ''
    #clock {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
