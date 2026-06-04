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
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }
  '';
}
