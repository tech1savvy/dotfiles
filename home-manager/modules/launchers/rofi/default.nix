{
  pkgs,
  lib,
  ...
}: {
  programs.rofi = {
    enable = true;

    # package = pkgs.rofi-wayland; # 'rofi-wayland' has been merged into 'rofi'
    location = "bottom";
    xoffset = 0;
    yoffset = 0;

    modes = [
      "recursivebrowser"
      "calc"
      {
        name = "cliphist";
        path = "cliphist-rofi";
      }
      "window"
      "drun"
      "run"
      # {
      #   name = "powermenu";
      #   path = lib.getExe pkgs.rofi-power-menu;
      # }
      # {
      #   name = "systemd";
      #   path = lib.getExe pkgs.rofi-systemd;
      # }
      # {
      #   name = "rbw";
      #   path = lib.getExe pkgs.rofi-rbw-wayland;
      # }
      # {
      #   name = "pulse";
      #   path = lib.getExe pkgs.rofi-pulse-select;
      # }
      # {
      #   name = "screenshot";
      #   path = lib.getExe pkgs.rofi-screenshot;
      # }
      # {
      #   name = "network";
      #   path = lib.getExe pkgs.rofi-network-manager;
      # }
      # {
      #   name = "bluetooth";
      #   path = lib.getExe pkgs.rofi-bluetooth;
      # }
    ];

    extraConfig = {
      combi-modes = "window,drun,run";

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
      # rofi-emoji-wayland # 'rofi-emoji-wayland' has been merged into `rofi-emoji as 'rofi-wayland' has been merged into 'rofi'
      rofi-emoji
      rofi-file-browser
      # rofi-blezz
      rofi-top
      # rofi-games
    ];
  };
}
