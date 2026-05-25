{ config, ... }:
{

  home.file = {

    ".config/wl-kbptr" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/wl-kbptr";
      recursive = true;
    };

    ".config/nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/nvim";
      recursive = true;
    };

    ".config/kickstart" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/kickstart";
      recursive = true;
    };

    ".config/mouseless" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/mouseless";
      recursive = true;
    };

    ".config/mimeapps.list" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/mimeapps.list";
    };

    ".config/fastfetch" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/fastfetch";
    };
  };

}
