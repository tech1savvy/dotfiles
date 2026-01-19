{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    python313Packages.pygame
    # dependencies
    SDL2
    # SDL2_image
    # SDL2_mixer
    # SDL2_ttf
    # SDL2_net
    # SDL2_gfc
    # SDL2_sound
    # SDL2_Pango
  ];
}
