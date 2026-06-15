# Three-layer configuration overview:
#
# 1. policies (top-level, policies.json)
#    DisableAppUpdate, DisablePocket, etc. — enforced, user can't change
#
# 2. policies.Preferences (in policies.json)
#    Locked preference values like browser.startup.homepage — enforced, user can't change
#
# 3. profiles.*.settings (prefs.js)
#    User preferences like zen.* settings — defaults, user can change in browser
#
# Key rules for profiles.*.settings:
# - ALWAYS quote non-Zen keys: "browser.tabs.warnOnClose" = false;
# - Don't use nested notation for browser.*: don't do browser = { tabs.warnOnClose = ... }
# - Settings persist to prefs.js; user can override in browser
#
# Troubleshooting settings not persisting: see issue #293
# https://github.com/0xc000022070/zen-browser-flake/issues/293
{
  imports = [
    ./policies.nix
    ./immutable-preferences.nix
    ./mutable-preferences.nix
  ];
}
