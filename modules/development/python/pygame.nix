{ pkgs, config, lib, ... }:
let
  cfg = config.development.python.pygame;
in
{
  options.development.python.pygame.enable = lib.mkEnableOption "Pygame and SDL2";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      python314Packages.pygame
      SDL2
    ];
  };
}
