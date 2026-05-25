{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerd-fonts.noto
    nerd-fonts.jetbrains-mono
    nerd-fonts._3270

    font-awesome # required for waybar
  ];
}
