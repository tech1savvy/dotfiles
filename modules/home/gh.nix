{ pkgs, ... }:
{
  programs.gh = {
    enable = true;

    extensions = with pkgs; [
      gh-dash
      # FIX: Allow unstable pkgs in home-manager
      # ref: https://youtu.be/hlytf6Uxf4E
      # unstable.gh-enhance
    ];

    gitCredentialHelper = {
      enable = true;
      hosts = [
        "https://github.com"
        "https://gist.github.com"
      ];
    };
  };
}
