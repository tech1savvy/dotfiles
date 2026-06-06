{ pkgs, ... }:
let
  settings = import ./yazi.nix;
  keymap = import ./keymap.nix;
  theme = import ./theme.nix;
in
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    shellWrapperName = "yy";
    inherit settings;
    inherit keymap;
    inherit theme;
    plugins = {
      lazygit = pkgs.yaziPlugins.lazygit;
      full-border = pkgs.yaziPlugins.full-border;
      git = pkgs.yaziPlugins.git;
      smart-enter = pkgs.yaziPlugins.smart-enter;
    };

    initLua = ./init.lua;
  };
}
