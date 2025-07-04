{inputs, pkgs, ...}: {

  environment.systemPackages = with pkgs; [
    spotify
  ];

  # Spicetify is a tool to customize Spotify client
  # guide: https://gerg-l.github.io/spicetify-nix/
  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in {
    enable = true;
    # theme = spicePkgs.themes.dribbblish;
    # colorScheme = "gruvbox-material-dark";
    
    enabledExtensions = with spicePkgs.extensions; [
      # keyboardShortcut # bindings: https://spicetify.app/docs/advanced-usage/extensions/#keyboard-shortcut
      shuffle # un-biased shuffle
      beautifulLyrics
      fullAppDisplay
      # simpleBeautifulLyrics
      adblock
    ];
  };
}
