{ config, lib, pkgs, ... }:

{
  options.virtualisation.vagrant.enable = lib.mkEnableOption "Vagrant";

  config = lib.mkIf config.virtualisation.vagrant.enable {
    environment.systemPackages = [ pkgs.vagrant ];
  };
}
