{ pkgs, config, lib, ... }:
let
  cfg = config.development.dotnet;
in
{
  options.development.dotnet.enable = lib.mkEnableOption ".NET development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      dotnet-sdk_10
    ];
  };
}
