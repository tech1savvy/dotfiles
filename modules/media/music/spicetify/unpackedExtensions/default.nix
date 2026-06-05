{ config, lib, ... }:
let
  cfg = config.spicetify.unpackedExtensions;
in
{
  imports = [
    ./hide-images.nix
  ];

  config.spicetify.unpackedExtensionsList = lib.mapAttrsToList (name: ext: {
    inherit (ext) src name;
  }) (lib.filterAttrs (name: ext: ext.enable) cfg);
}
