{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";

    initLua = ./init.lua;
    plugins = with pkgs; {
      inherit (yaziPlugins)
        git
        lazygit
        piper
        yatline
        restore
        ;
    };

    settings = {
      mgr = {
        show_hidden = true;
        linemode = "size";
        ratio = [
          1
          3
          6 # preview pan
        ];
      };
      preview = {
        wrap = "yes";
      };
      plugin = {
        prepend_fetchers = [
          {
            id = "git";
            name = "*";
            run = "git";
          }
          {
            id = "git";
            name = "*/";
            run = "git";
          }
        ];
      };
    };
  };
}
