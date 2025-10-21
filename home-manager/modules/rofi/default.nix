{pkgs, ...}:{
  programs.rofi = {
    enable = true;

    plugins = with pkgs; [
      rofi-calc
      rofi-emoji

      rofi-top
      rofi-games
    ];
  }
}
