{pkgs, ...}:
{
  stylix.enable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-hard.yaml";

  stylix.cursor = {
    package = pkgs.capitaine-cursors;
    name = "Capitaine-Cursors";
    size = 22;
  };

  stylix.polarity = "dark";

  stylix.targets.spicetify.enable = false;
}
