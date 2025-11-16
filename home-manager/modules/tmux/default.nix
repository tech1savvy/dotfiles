{
  lib,
  pkgs,
  ...
}: let
  tmuxConf = lib.readFile ./tmux.conf;
in {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    # prefix = "C-a";

    extraConfig = tmuxConf;

    plugins = with pkgs; [
      # tmuxPlugins.sensible # adds sensible defaults
      tmuxPlugins.tmux-which-key # not working
      tmuxPlugins.resurrect
      tmuxPlugins.continuum
      tmuxPlugins.tmux-sessionx
    ];
  };
}
