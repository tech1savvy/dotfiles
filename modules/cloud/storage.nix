{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    rclone
    rclone-browser
    inotify-tools

    dropbox
  ];

  environment.variables.TERMINAL = "kitty"; # for rclone-browser
}
