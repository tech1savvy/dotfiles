{ pkgs, lib, ... }:
{
  qt.kvantum = {
    enable = true;
    themes = [ pkgs.nordic ];
    settings.General.theme = lib.mkForce "Nordic";
  };

  xdg.configFile."kdeglobals".source =
    "${pkgs.nordic}/share/color-schemes/Nordic.colors";
}
