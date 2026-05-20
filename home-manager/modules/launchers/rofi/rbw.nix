{ pkgs, ... }:
{
  programs.rbw = {
    enable = true;
    settings = {
      email = "amankumar010604@gmail.com";
      lock_timeout = 300;
      pinentry = pkgs.pinentry-curses;
    };
  };
}
