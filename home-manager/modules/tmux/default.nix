{lib, pkgs, ...}:

let
    tmuxConf = lib.readFile ./tmux.conf;
in
{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    # prefix = "C-a";
    
    extraConfig = tmuxConf;

    plugins = with pkgs; [
      tmuxPlugins.vim-tmux-navigator
      tmuxPlugins.sensible
      tmuxPlugins.tokyo-night-tmux
    ];
  };
}
