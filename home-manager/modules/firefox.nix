{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    # nativeMessagingHosts = [ pkgs.firefoxpwa ];
    # package = pkgs.firefox-devedition;
    # profiles.default = {
    #   settings = {
    #     "browser.link.open_newwindow" = "1";
    #   };
    # };
  };
}
