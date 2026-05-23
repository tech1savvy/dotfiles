c: {
  settings."pulseaudio#microphone" = {
    format = "{format_source}";
    "format-source" = "{volume}% 󰍬";
    "format-source-muted" = "<span color='#${c.base08}'>󰍭</span>";
    "on-click" = "pamixer --default-source -t";
    "on-scroll-up" = "pamixer --default-source -i 2";
    "on-scroll-down" = "pamixer --default-source -d 2";
    "scroll-step" = 5;
  };

  style = ''
    #pulseaudio.microphone {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
