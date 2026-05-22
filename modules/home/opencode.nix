{ config, ... }:
let
  cfg = "${config.home.homeDirectory}/dotfiles/config/opencode";
in
{
  home.file = {
    # OPENCODE
    ".config/opencode/opencode.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode.json";
    };
    # TUI
    ".config/opencode/tui.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/tui.json";
    };
    # PLUGINS
    # -- NOTIFIER
    ".config/opencode/opencode-notifier.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode-notifier.json";
    };
    # -- QUOTA
    ".config/opencode/opencode-quota/quota-toast.json" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/opencode-quota/quota-toast.json";
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
    # SKILLS
    ".config/opencode/skills" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/skills";
      recursive = true;
    };
    # TOOLS
    ".config/opencode/tools" = {
      source = config.lib.file.mkOutOfStoreSymlink "${cfg}/tools";
      recursive = true;
    };
  };

}
