{
  services.hyprpaper =
    let
      wallpaper = "~/wallpapers/solarized/chinatown.png";
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
