{ config, ... }:
let
  cfg = "${config.home.homeDirectory}/dotfiles/config";
in
{
  home.file = {
    # OPENCODE
    ".config/opencode/opencode.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode/opencode.json";
    };
    # TUI
    ".config/opencode/tui.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode/tui.json";
    };
    # PLUGINS
    # -- NOTIFIER
    ".config/opencode/opencode-notifier.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode/opencode-notifier.json";
    };
    # AGENTS
    ".config/opencode/agents" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/agents";
      recursive = true;
    };
    # COMMANDS
    ".config/opencode/commands" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/commands";
      recursive = true;
    };
  };

}
