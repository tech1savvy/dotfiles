{ pkgs, ... }:
{
  programs.gh = {
    enable = true;

    extensions = with pkgs; [
      gh-dash
      gh-enhance
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
