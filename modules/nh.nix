{
  programs.nh = {
    enable = true;
    flake = "\${HOME}/dotfiles";
    clean = {
      enable = true;
      dates = "weekly";
    };
  };
}
