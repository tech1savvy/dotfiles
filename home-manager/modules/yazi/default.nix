{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;

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
