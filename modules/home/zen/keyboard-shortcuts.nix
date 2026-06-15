{
  programs.zen-browser.profiles.default = {
    keyboardShortcuts = [
      {
        id = "zen-compact-mode-toggle";
        key = "c";
        modifiers = {
          control = true;
          alt = true;
        };
      }
      {
        id = "zen-toggle-sidebar";
        key = "x";
        modifiers = {
          control = true;
          alt = true;
        };
      }
      {
        id = "key_quitApplication";
        disabled = true;
      }
      {
        id = "key_reload";
        key = "r";
        modifiers.control = true;
      }
      {
        id = "key_reload_skip_cache";
        key = "r";
        modifiers = {
          control = true;
          shift = true;
        };
      }
    ];
    # Version check prevents silent breakage if Zen updates change the shortcuts schema.
    # In order to avoid breaking changes here, sometimes when you upgrade you
    # should be asked to bump this version
    keyboardShortcutsVersion = 19;
  };
}
# Find shortcut IDs in ~/.config/zen/default/zen-keyboard-shortcuts.json
# Get version from about:config -> zen.keyboard.shortcuts.version
# Activation fails if version changes (prevents silent breakage).
#
# Use this command:
# jq -c '.shortcuts[] | {id, key, keycode, action}' ~/.config/zen/default/zen-keyboard-shortcuts.json | fzf
