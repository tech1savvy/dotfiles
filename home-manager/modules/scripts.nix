{config, ...}: {
  home.file = {
    "/bin" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/scripts";
      recursive = true;
    };
  };
}
