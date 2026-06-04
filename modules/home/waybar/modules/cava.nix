{
  settings.cava = {
    framerate = 60;
    autosens = 0;
    sensitivity = 100;
    bars = 1;
    "lower_cutoff_freq" = 50;
    "higher_cutoff_freq" = 12000;
    method = "pulse";
    hide_on_silence = true;
    sleep_timer = 5;
    source = "auto";
    stereo = false;
    reverse = false;
    bar_delimiter = 0;
    monstercat = false;
    waves = false;
    noise_reduction = 0.5;
    input_delay = 2;
    "format-icons" = [
      "░"
      "░"
      "▒"
      "▒"
      "▓"
      "▓"
      "█"
      "█"
    ];
    actions = {
      "on-click-right" = "mode";
    };
  };

  style = ''
    #cava {
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
