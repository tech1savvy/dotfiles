{
  services.hyprlock = {
    enable = false;

    settings = {
      general = {
        disable_loading_bar = true;
        grace = 300;
        hide_cursor = true;
        no_fade_in = false;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "5%, 5%";
          position = "0, -20";
          halign = "center";
          valign = "center";

          rounding = 15;
          outline_thickness = 3;
          shadow_passes = 2;

          monitor = "";
          dots_center = true;
          fade_on_empty = false;


          font_color = "rgb(143, 143, 143)";
          inner_color = "rgba(0, 0, 0, 0.0)";
          outer_color = "gradient(45deg, #33ccff, #00ff99)";

          check_color = "gradient(120deg, #00ff99, #ff6633)";
          fail_color = "gradient(40deg, #ff6633, #ff0066)";

          placeholder_text = "tech1savvy";
        }
      ];
    };
  };
}
