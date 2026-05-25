{ pkgs, ... }:
{
  boot.loader.limine = {
    enable = true;
    style.wallpapers = [ pkgs.nixos-artwork.wallpapers.nineish-solarized-dark.gnomeFilePath ];
  };
}
