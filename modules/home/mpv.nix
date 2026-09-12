{ pkgs, ... }:
{
  programs.mpv = {
    enable = true;

    config = {
      screenshot-format = "png";
      screenshot-template = "%x/Frame-%F-T%wH.%wM.%wS.%wT-F%{estimated-frame-number}";

      keep-open = true;
    };

    bindings = {
      WHEEL_UP = "seek 1";
      WHEEL_DOWN = "seek -1";
    };

    # scripts = with pkgs.mpvScripts; [
    #   mpris
    # ];
  };
}
