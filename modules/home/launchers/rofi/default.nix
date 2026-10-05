{
  pkgs,
  lib,
  ...
}:
{
  imports = [
    ./rbw.nix
  ];

  programs.rofi = {
    enable = true;

    # package = pkgs.rofi-wayland; # 'rofi-wayland' has been merged into 'rofi'

    settings = {
      location = 0;
      xoffset = 0;
      yoffset = 0;

      combi-modes = [
        "window"
        "drun"
        "run"
      ];

      modes = [
        "recursivebrowser"
        "calc"
        "cliphist:cliphist-rofi"
        "window"
        "drun"
        "run"
        # "powermenu:${lib.getExe pkgs.rofi-power-menu}"
        # "systemd:${lib.getExe pkgs.rofi-systemd}"
        # "pulse:${lib.getExe pkgs.rofi-pulse-select}"
        # "screenshot:${lib.getExe pkgs.rofi-screenshot}"
        # "network:${lib.getExe pkgs.rofi-network-manager}"
        # "bluetooth:${lib.getExe pkgs.rofi-bluetooth}"
      ];

      show-icons = false;
      # icon-theme = "Buuf Icons";
      font = "JetBrainsMono Nerd Font Mono 12";
      # drun-display-format = "{icon} {name}";
      display-drun = " :"; # desktop apps
      display-run = " :"; # cli cmds
      display-filebrowser = " :";
      display-emoji = "󰞅 :";
    };

    plugins = with pkgs; [
      rofi-calc
      rofi-emoji # 'rofi-emoji-wayland' has been merged into `rofi-emoji`
      rofi-file-browser
      # rofi-blezz
      rofi-top
      # rofi-games
    ];
  };
}
