{ pkgs, ... }: {
  programs.zen-browser.nativeMessagingHosts = [
    pkgs.firefoxpwa
  ];
}
