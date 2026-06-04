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
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }
  '';
}
