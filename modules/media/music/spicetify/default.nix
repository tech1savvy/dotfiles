{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
with lib;
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
  cfg = config.spicetify;
in
{
  imports = [
    ./options.nix
    ./unpackedExtensions
    ./customApps
  ];

  config = mkIf cfg.enable {
    programs.spicetify = {
      enable = true;
      theme = spicePkgs.themes.text;
      colorScheme = "Solarized";

      enabledExtensions =
        with spicePkgs.extensions;
        [
          keyboardShortcut
          fullAppDisplayMod
          adblock
          hidePodcasts
          autoVolume
          powerBar
          seekSong
          playingSource
          coverAmbience
          catJamSynced
          sortPlay
          madeForYouShortcut
        ]
        ++ cfg.unpackedExtensionsList;

      enabledCustomApps = cfg.customAppsList;
    };
  };
}
