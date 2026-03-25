{ pkgs, ... }:
{
  programs.lazygit = {
    enable = true;

    settings = {
      gui = {
        # If true, switch to a different worktree without confirmation when checking out
        # a branch that is checked out in that worktree
        skipSwitchWorktreeOnCheckoutWarning = true;
      };

      customCommands = [
        {
          key = "<c-g>";
          description = "Generate commit message via Gemini";
          context = "global";
          output = "terminal";
          # TODO: Add sopsnix support
          command = "~/bin/lazygit-gemini-commit"; # needs $GEMINI_API_KEY
        }
      ];
    };
  };

  home.packages = with pkgs; [
    curl
    jq
    gum
  ];
}
