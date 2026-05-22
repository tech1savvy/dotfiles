{
  config,
  pkgs,
  lib,
  ...
}:
let
  zshrc = lib.readFile ./zshrc;
in
{
  imports = [
    ./zsh-abbr.nix
    # ./oh-my-zsh.nix
  ];

  home.shell.enableZshIntegration = true;

  # https://github.com/elliottminns/dotfiles/blob/main/nix/home/zsh.nix
  programs.zsh = {
    enable = true;

    dotDir = "${config.xdg.configHome}/zsh";
    history.path = "${config.xdg.dataHome}/zsh/history";
    history.size = 10000;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = zshrc;

    plugins = [
      {
        name = "vi-mode";
        src = pkgs.zsh-vi-mode;
        file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
      }
      {
        name = "fzf-tab";
        src = pkgs.zsh-fzf-tab;
        file = "share/fzf-tab/fzf-tab.plugin.zsh";
      }
    ];
  };
}
