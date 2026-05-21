{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    nerd-fonts.noto
    font-awesome # default for waybar
  ];
}
