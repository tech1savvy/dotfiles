{
  services.hyprpaper = {
    enable = true;

    settings = {
      wallpaper = {
        monitor = "";
        path = "~/wallpapers/solarized/japanese-pedestrian-street.png";
        fit_mode = "cover";
        # If path is DIR
        timeout = 30;
        order = "random";
        # scan subdirectires
        recursive = true;
      };

      ipc = "off";
      splash = false;
      splash_offset = 2;
    };
  };
}
