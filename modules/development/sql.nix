{
  pkgs,
  config,
  lib,
  ...
}:
let
  cfg = config.development.sql;
in
{
  options.development.sql.enable = lib.mkEnableOption "SQL development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      postgresql # psql bin
      sqlfluff # linter & formatter
    ];
  };
}
