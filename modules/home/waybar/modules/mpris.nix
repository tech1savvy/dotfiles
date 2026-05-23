{
  settings.mpris = {
    format = "{title}";
    "format-paused" = "<i>{title}</i>";
  };

  style = ''
    #mpris {
      background: @base01;
      border: 1px solid @base02;
      color: @base0A;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
