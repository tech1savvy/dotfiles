{ pkgs, ... }:
{
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/solarized-dark.yaml";

    iconTheme = {
      enable = true;
      package = pkgs.beauty-line-icon-theme;
      light = "BeautyLine";
      dark = "BeautyLine";
    };

    cursor = {
      package = pkgs.capitaine-cursors;
      name = "capitaine-cursors";
      size = 20;
    };

    polarity = "dark";

    targets.spicetify.enable = false;
  };
}
