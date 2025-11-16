{pkgs, ...}: {
  services.activitywatch = {
    enable = true;

    # watchers = {
    #   aw-watcher-afk = {
    #     package = pkgs.activitywatch;
    #     settings = {
    #       timeout = 300;
    #       poll_time = 2;
    #     };
    #   };
    #   aw-watcher-window = {
    # # use this pkg for window wathching on hyprland: https://github.com/bobvanderlinden/aw-watcher-window-hyprland
    # # since it is now available as nix pkg, install it with cargo and the point to bin file here
    #     package = pkgs.activitywatch;
    #     settings = {
    #       poll_time = 1;
    #       exclude_title = true;
    #     };
    #   };
    # };
  };
}
