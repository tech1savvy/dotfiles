{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;

    defaultCommand = "rg --files --hidden --glob=!.git/";
    defaultOptions = [
      "--margin=1"
      "--layout=reverse"
      "--border=none"
      "--info='hidden'"
      "--header=''"
      "--prompt='/ '"
      "-i"
      "--no-bold"
      # "--bind='enter:execute(nvim {})'"
      # "--preview='bat --style=numbers --color=always --line-range :500 {}'"
      # "--preview-window=right:60%:wrap"
    ];

    fileWidgetCommand = "rg --files --hidden --glob=!.git/";
    fileWidgetOptions = [
      "--margin=1"
      "--layout=reverse"
      "--border=none"
      "--info='hidden'"
      "--header=''"
      "--prompt='/ '"
      "-i"
      "--no-bold"
      # "--bind='enter:execute(nvim {})'"
      # "--preview='bat --style=numbers --color=always --line-range :500 {}'"
      # "--preview-window=right:60%:wrap"
    ];
  };
}
