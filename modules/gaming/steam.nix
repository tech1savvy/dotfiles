{ pkgs, ... }:
{
  programs.steam = {
    enable = true;

    protontricks = {
      enable = true;
      package = pkgs.protontricks;
    };
    extraCompatPackages = [ pkgs.proton-ge-bin ];

    # better sandbox for games
    gamescopeSession.enable = true;
  };

  # better optimisation for game processes
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud
  ];
}
