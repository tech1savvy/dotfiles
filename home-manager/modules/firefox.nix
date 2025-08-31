{
  programs.firefox = {
    enable = true;
    profiles.default = {
      settings = {
        "browser.link.open_newwindow" = "1";
      };
    };
  };
}
