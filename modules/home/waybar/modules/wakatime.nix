{
  settings."custom/wakatime" = {
    format = "{}";
    exec = "waybar-wakatime";
    interval = 120;
    "return-type" = "json";
  };

  style = ''
    #custom-wakatime {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
