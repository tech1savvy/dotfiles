{ pkgs, config, lib, ... }:
let
  cfg = config.development.json;
in
{
  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      jless
      jq
    ];
  };
}
