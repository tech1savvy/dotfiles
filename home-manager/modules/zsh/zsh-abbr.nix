{ lib, ... }:
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "zsh-abbr" ];
  programs.zsh.zsh-abbr = {
    enable = true;

    globalAbbreviations = {
      P = "| ";
      NE = "2>/dev/null"; # Redirect stderr to /dev/null
      NO = ">/dev/null"; # Redirect stdout to /dev/null
      NUL = ">/dev/null 2>&1"; # Redirect both stdout and stderr to /dev/null
      J = "| jq"; # Pipe to jq
      C = "| wl-copy"; # Copy output to clipboard (Wayland)
    };
    abbreviations = {
      se = "sudoedit";

      cmd = "command";

      ns = "nh os switch";
      nt = "nh os test";
      nb = "nh os build";
      nc = "nh clean all";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      deploy = "nix run github:serokell/deploy-rs -- .#";
    };
  };
}
