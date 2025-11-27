{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "off";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/Wallpapers/flower.jpg"
      ];

      wallpaper = [
        ",~/Wallpapers/flower.jpg"
      ];
    };
  };
}
