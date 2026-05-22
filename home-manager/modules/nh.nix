{ ... }:
{
  programs.nh = {
    enable = true;
    flake = "\${HOME}/dotfiles";
    clean = {
      enable = false;
      dates = "weekly";
    };
  };
}
