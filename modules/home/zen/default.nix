{ inputs, ... }: {

  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official

    ./policies.nix
    ./search.nix
    ./extensions.nix
    ./mods.nix
  ];

  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = false;
  };

  stylix.targets.zen-browser.profileNames = [ "default" ];
}
