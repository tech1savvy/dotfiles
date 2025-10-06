{config, ...}: {

  programs.tmux.enable = true;

  home.file = {
    "./.tmux.conf" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/tmux/.tmux.conf";
    };
  };
}
