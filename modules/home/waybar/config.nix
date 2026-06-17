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
  mergedStyle =
    (builtins.readFile ./style.css) + builtins.concatStringsSep "\n" (builtins.map (m: m.style) mods);
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
          position = "bottom";
          height = 18;
          spacing = 1;
          "fixed-center" = false;
          "margin-top" = 0;
          "margin-right" = 0;
          "margin-bottom" = 0;
          "margin-left" = 0;

          modules-left = [
            "hyprland/workspaces"
            "hyprland/submap"
          ];
          modules-center = [
            "custom/wakatime"
            "cava"
            "mpris"
            "cava"
            "custom/tomat"
          ];
          modules-right = [
            "pulseaudio"
            "pulseaudio#microphone"
            "custom/separator"
            "network"
            "cpu"
            "memory"
            "custom/separator"
            "battery"
            "clock"
            "custom/separator"
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
