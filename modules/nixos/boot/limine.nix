{ config, lib, pkgs, ... }:
with lib;
{
  options.boot.limine.enable = mkEnableOption "Limine bootloader";

  config = mkIf config.boot.limine.enable {
    boot.loader = {
      limine = {
        enable = true;
        style.wallpapers = [ pkgs.nixos-artwork.wallpapers.nineish-solarized-dark.gnomeFilePath ];
      };
      systemd-boot.enable = mkForce false;
    };
  };
}
