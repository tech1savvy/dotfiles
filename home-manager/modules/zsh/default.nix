{
  config,
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./zsh-abbr.nix
  ];
  # https://www.youtube.com/watch?v=3fVAtaGhUyU
  # https://github.com/elliottminns/dotfiles/blob/main/nix/home/zsh.nix
  # https://gist.github.com/elliottminns/09a598082d77f795c88e93f7f73dba61
  home.shell.enableZshIntegration = true;
  programs.zsh = {
    enable = true;

    initContent = "source ${./zshrc}";
    history.size = 10000;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
        "sudo"
        "docker"
        "golang"
        "kubectl"
        # "kubectx"
        # "rust"
        "command-not-found"
        # "pass"
        # "helm"
      ];

    };

    plugins = [
      {
        name = "vi-mode";
        src = pkgs.zsh-vi-mode;
        file = "share/zsh-vi-mode/zsh-vi-mode.plugin.zsh";
      }
      {
        name = "zsh-completions";
        src = pkgs.zsh-completions;
        file = "share/zsh-completions/zsh-completions.zsh";
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.zsh-syntax-highlighting;
        file = "share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh";
      }
      {
        name = "fzf-tab";
        src = pkgs.zsh-fzf-tab;
        file = "share/fzf-tab/fzf-tab.plugin.zsh";
      }
    ];
  };
}
