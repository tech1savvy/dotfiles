{ pkgs, ... }:
{
  programs.lazygit = {
    enable = true;

    settings = {
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
