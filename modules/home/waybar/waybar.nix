{
  config,
  pkgs,
  lib,
  ...
}:
let
  c = config.lib.stylix.colors;
  mods = (import ./modules) { inherit c pkgs; };
  mergedSettings = builtins.foldl' (acc: m: acc // m.settings) { } mods;
  mergedStyle = ''
    * {
      font-size: 9px;
    }
  ''
  + builtins.concatStringsSep "\n" (builtins.map (m: m.style) mods);
in
{
  home.file = builtins.foldl' (acc: m: acc // (m.home.file or { })) { } mods;
  home.packages = builtins.concatLists (builtins.map (m: m.home.packages or [ ]) mods);

  programs.waybar = {
    enable = true;

    settings = [
      (
        {
          layer = "top";
          position = "top";
          height = 0;
          spacing = 0;
          "margin-top" = 0;
          "margin-right" = 0;
          "margin-bottom" = -1;
          "margin-left" = 0;

          modules-left = [

            "hyprland/workspaces"
            "hyprland/submap"
            "custom/tomat"
          ];
          modules-center = [
            "custom/wakatime"
            "mpris"
            "cava"
          ];
          modules-right = [

            "pulseaudio"
            "pulseaudio#microphone"
            "network"
            "network#speed"
            "cpu"
            "memory"
            "battery"
            "clock"
            "tray"
            "custom/power"
          ];
        }
        // mergedSettings
      )
    ];

    style = lib.mkAfter mergedStyle;
  };
}
