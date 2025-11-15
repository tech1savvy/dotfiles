{pkgs,lib, ...}: {
  programs.rofi = {
    enable = false;

    package = pkgs.rofi-wayland;

    modes = [
      "window"
      "drun"
      "run"
      {
        name = "powermenu";
        path = lib.getExe pkgs.rofi-power-menu;
      }
      {
        name = "systemd";
        path = lib.getExe pkgs.rofi-systemd;
      }
      {
        name = "rbw";
        path = lib.getExe pkgs.rofi-rbw-wayland;
      }
      {
        name = "pulse";
        path = lib.getExe pkgs.rofi-pulse-select;
      }
      {
        name = "screenshot";
        path = lib.getExe pkgs.rofi-screenshot;
      }
      {
        name = "network";
        path = lib.getExe pkgs.rofi-network-manager;
      }
      {
        name = "bluetooth";
        path = lib.getExe pkgs.rofi-bluetooth;
      }
    ];

    extraConfig = {
      # modi = "drun,filebrowser,run";
      show-icons = true;
      icon-theme = "Papirus";
      font = "JetBrainsMono Nerd Font Mono 12";
      drun-display-format = "{icon} {name}";
      display-drun = " Apps";
      display-run = " Run";
      display-filebrowser = " File";
    };
    plugins = with pkgs; [
      rofi-calc
      rofi-emoji-wayland
      rofi-file-browser
      rofi-blezz
      rofi-top
      rofi-games
    ];
  };
}
