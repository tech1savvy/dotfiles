{ config, ... }:
{
  home.file = {
    ".config/mimeapps.list" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/modules/home/mime/mimeapps.list";

    };
  };
}
