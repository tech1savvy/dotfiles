{pkgs, ...}: {
  programs.bat = {
    enable = true;

    extraPackages = with pkgs.bat-extras; [
      batman
      batdiff
      batgrep
      batwatch # not watch, rather watches file changes using entr
      # prettybat
      # batpipe
    ];
    # add to aliases
  };
}
