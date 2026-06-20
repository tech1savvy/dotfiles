{ config, lib, ... }:
let
  cfg = config.development.nix;
in
{
  config = lib.mkIf cfg.enable {
    programs.nix-index.enable = true;
    programs.nix-index-database.comma.enable = true;
  };
}
