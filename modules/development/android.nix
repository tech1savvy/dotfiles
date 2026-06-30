{
  pkgs,
  config,
  lib,
  ...
}:
let
  cfg = config.development.android;
in
{
  options.development.android.enable = lib.mkEnableOption "Android development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      android-tools
      universal-android-debloater
    ];
  };
}
