{ inputs, ... }: {
  # home.nix
  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official

    ./search.nix
  ];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = false;
  };
}
