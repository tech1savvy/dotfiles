{
  services.hyprpaper =
    let
      wallpaper = "~/Wallpapers/japanese-pedestrian-street.png";
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
