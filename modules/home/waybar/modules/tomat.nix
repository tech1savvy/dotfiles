{
  settings."custom/tomat" = {
    exec = "tomat status";
    interval = 1;
    "return-type" = "json";
    #FIX: tomato emoji not rendered (setting hm module fonts.fontconfig may help)
    format = "{text}";
    tooltip = true;
    "on-click" = "tomat toggle";
    "on-click-right" = "tomat skip";
  };

  style = ''
    #custom-tomat {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 150px;
      padding: 1px 6px;
    }
    #custom-tomat.work {
      color: @base0D;
    }
    #custom-tomat.break {
      color: @base0B;
    }
  '';
}
