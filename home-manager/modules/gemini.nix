{
  home.file = {
    ".config/.gemini/GEMINI.md" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/gemini/GEMINI.md";
    };
  };
  home.file = {
    ".config/.gemini/commands" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/gemini/commands";
      recursive = true;
    };
  };
}
