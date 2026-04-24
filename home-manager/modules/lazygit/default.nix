{ pkgs, ... }:
{
  programs.lazygit = {
    enable = true;

    settings = {
      gui = {
        # If true, switch to a different worktree without confirmation when checking out
        # a branch that is checked out in that worktree
        skipSwitchWorktreeOnCheckoutWarning = true;

        # If true, do not show a warning when rewording a commit via an external editor
        skipRewordInEditorWarning = true;
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
