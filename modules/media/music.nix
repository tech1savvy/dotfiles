{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # spotify
    termusic
  ];

  # Spicetify is a tool to customize Spotify client
  # guide: https://gerg-l.github.io/spicetify-nix/
  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in {
    enable = false;
    theme = spicePkgs.themes.text;
    colorScheme = "Gruvbox";

    enabledExtensions = with spicePkgs.extensions; [
      keyboardShortcut # bindings: https://spicetify.app/docs/advanced-usage/extensions/#keyboard-shortcut
      # fullAppDisplay
      fullAppDisplayMod
      adblock
      hidePodcasts
      autoVolume

      # unpacked
      {
        # The source of the extension
        # make sure you're using the correct branch
        # It could also be a sub-directory of the repo
        #
        # https://github.com/adventuretc/Spicetify-HideImages-Extension
        src = pkgs.fetchFromGitHub {
          owner = "adventuretc";
          repo = "Spicetify-HideImages-Extension";
          rev = "main";
          hash = "sha256-Xm/1cJkcEZCq0EUIIoWF0mKg6Btyhv0C7Z22KyIUhVE=";
        };
        # The actual file name of the extension usually ends with .js
        name = "HideImages.js";
      }
    ];

    # enabledCustomApps =  [
    #   ({
    #     src = pkgs.fetchFromGitHub {
    #       owner = "Konsl";
    #       repo = "spicetify-visualizer";
    #       rev = "dist";
    #       hash = "sha256-+QzNtKYpaW0EWpP6FULLFK3MOGj5r548pK2i8p5nZ0c=";
    #     };

    #     # The actual file name of the customApp usually ends with .js
    #     name = "index.js";
    #   })
    # ];
  };
}
