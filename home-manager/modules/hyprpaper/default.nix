{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "off";
      splash = false;
      splash_offset = 2;

      preload = [
        "~/Wallpapers/flower.jpg"
      ];

      wallpaper = [
        "eDP-1, ~/Wallpapers/flower.jpg"
      ];
    };
  };
}
