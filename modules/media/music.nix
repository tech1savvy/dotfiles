{
  inputs,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # Players
    # spotify
    termusic
    # Downloader
    spotdl

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
