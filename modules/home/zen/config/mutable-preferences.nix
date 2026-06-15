# about:config
{ ... }: {
  programs.zen-browser.profiles.default.settings = {
    /**
      use double quotes!
    */
    "zen.workspaces.continue-where-left-off" = false;
    "zen.view.compact.hide-tabbar" = true;
    "zen.urlbar.behavior" = "float";
    "zen.welcome-screen.seen" = true;
    "zen.window-sync.enabled" = false;
  };
}
