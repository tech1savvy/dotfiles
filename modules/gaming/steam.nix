{ pkgs, ... }:
{
  programs.steam.enable = true;
  programs.steam.protontricks.enable = true;
  programs.steam.protontricks.package = pkgs.protontricks;
  programs.steam.extraCompatPackages = [ pkgs.proton-ge-bin ];
  # better sandbox for games
  programs.steam.gamescopeSession.enable = true;

  # better optimisation for game processes
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud
  ];
}