{pkgs, ...}: {
  programs.yazi = {
    enable = true;

    initLua = ./init.lua;
    plugins = {
      git = pkgs.yaziPlugins.git;
      lazygit = pkgs.yaziPlugins.lazygit;

      piper = pkgs.yaziPlugins.piper;
      yatline = pkgs.yaziPlugins.yatline;
      restore = pkgs.yaziPlugins.restore;
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
