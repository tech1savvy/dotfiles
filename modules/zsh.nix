{
  programs.zsh.enable = true;

  # To get completion for system packages (e.g. systemd)
  # required by home...zsh.enableCompletion = true;
  environment.pathsToLink = [ "/share/zsh" ];
}
