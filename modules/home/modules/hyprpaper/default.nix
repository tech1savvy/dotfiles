{
  services.hyprpaper =
    let
      wallpaper = "~/Pictures/Wallpapers/lunar-tides.jpg";
    in
    {
      enable = true;

      settings = {
        ipc = "off";
        splash = false;
        splash_offset = 2;

        preload = [
          wallpaper
        ];

        wallpaper = [
          "eDP-1, ${wallpaper}"
        ];
      };
    };
}
