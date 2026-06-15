# about:config
{ lib, ... }: {
  programs.zen-browser.policies.Preferences =
    lib.mapAttrs
      (name: value: {
        Value = value;
        Status = "locked";
      })
      {
        "browser.startup.homepage" = "about:blank";
        "browser.tabs.warnOnClose" = true;
      };
}
