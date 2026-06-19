{ inputs, ... }: {

  imports = [
    inputs.zen-browser.homeModules.beta
    # or inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official

    ./config
    ./keyboard-shortcuts.nix

    ./search-engines.nix
    ./containers.nix
    ./extensions.nix
    ./mods.nix

    ./userChromeCSS.nix
    ./native-messaging.nix
  ];

  programs.zen-browser = {
    enable = false;
    setAsDefaultBrowser = false;
  };

  stylix.targets.zen-browser.profileNames = [ "default" ];
}
