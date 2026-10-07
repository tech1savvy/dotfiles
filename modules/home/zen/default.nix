{ inputs, ... }: {

  imports = [
    inputs.zen-browser.homeModules.twilight
    # or inputs.zen-browser.homeModules.twilight-official
    # inputs.zen-browser.homeModules.beta

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
    enable = true;
    setAsDefaultBrowser = false;
  };

  stylix.targets.zen-browser.profileNames = [ "default" ];
}
