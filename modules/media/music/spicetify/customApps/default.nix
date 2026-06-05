{ config, lib, ... }:
let
  cfg = config.spicetify.customApps;
in
{
  imports = [
    ./visualizer.nix
  ];

  config.spicetify.customAppsList = lib.mapAttrsToList (name: app: { inherit (app) src name; }) (
    lib.filterAttrs (name: app: app.enable) cfg
  );
}
