{
  programs.zellij = {
    enable = true;
    attachExistingSession = true;

    enableZshIntegration = true;
    enableBashIntegration = false;
    enableFishIntegration = false;

    exitShellOnExit = true;
    extraConfig = "";
    layouts = { };
    settings = { };
    themes = { };
  };
}
