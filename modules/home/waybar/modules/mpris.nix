{
  settings.mpris = {
    format = "{title}";
    "format-paused" = "<i>{title}</i>";
    "title-len" = 12;
    ellipsis = "...";
    interval = 1;
  };

  style = ''
    #mpris {
      background: @base01;
      border: 1px solid @base02;
      color: @base0A;
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }
  '';
}
