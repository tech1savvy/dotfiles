{config, ...}: {
  home.file = {
    ".gemini/AGENT.md" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/gemini/AGENT.md";
    };
  };
  home.file = {
    ".gemini/commands" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/gemini/commands";
      recursive = true;
    };
  };
  home.file = {
    ".gemini/settings.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/gemini/settings.json";
    };
  };
}
