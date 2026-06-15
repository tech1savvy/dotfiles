# about:config
{ lib, ... }: {
  programs.zen-browser.policies.Preferences =
    lib.mapAttrs
      (name: value: {
        Value = value;
        Status = "locked";
      })
      {
        "browser.startup.homepage" = "about:newtab";
        "browser.startup.page" = 1;
        "browser.tabs.warnOnClose" = true;
      };
}
