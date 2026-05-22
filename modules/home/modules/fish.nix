{
  home.shell.enableFishIntegration = true;
  programs.fish = {
    enable = true;

    completions = { };
    functions = { };
    generateCompletions = true;
    plugins = [ ];
    preferAbbrs = true;
    shellAbbrs = {
      # Nix Helper
      ns = "nh os switch";
      nt = "nh os test";
      nb = "nh os build";
      nc = "nh clean all";

      P = {
        position = "anywhere";
        expansion = "| ";
      };
      # Redirect stderr to /dev/null
      NE = {
        position = "anywhere";
        expansion = "2>/dev/null";
      };

      # Redirect stdout to /dev/null
      NO = {
        position = "anywhere";
        expansion = ">/dev/null";
      };

      # Redirect both stdout and stderr to /dev/null
      NUL = {
        position = "anywhere";
        expansion = ">/dev/null 2>&1";
      };

      # Pipe to jq
      J = {
        position = "anywhere";
        expansion = "| jq";
      };

      # Copy output to clipboard (Wayland)
      C = {
        position = "anywhere";
        expansion = "| wl-copy";
      };
    };
    shellAliases = { };
    binds = {

    };

    shellInitLast = "";
    shellInit = "";
    interactiveShellInit = "";
    loginShellInit = "";
  };
}
