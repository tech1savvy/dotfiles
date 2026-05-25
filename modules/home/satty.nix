{
  config,
  ...
}:
{
  programs.satty = {
    enable = true;
    settings = {
      general = {
        early-exit = true;
        copy-command = "wl-copy";
        save-after-copy = true;
        corner-roundness = 8;
        initial-tool = "rectangle";
      };
      color-palette.palette = with config.lib.stylix.colors; [
        "#${base08}"
        "#${base09}"
        "#${base0A}"
        "#${base0B}"
        "#${base0C}"
        "#${base0D}"
        "#${base0E}"
        "#${base0F}"
      ];
    };
  };
}
