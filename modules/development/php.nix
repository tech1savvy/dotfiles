{ pkgs, config, lib, ... }:
let
  cfg = config.development.php;
in
{
  options.development.php.enable = lib.mkEnableOption "PHP development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      php85
      php85Packages.composer
    ];
  };
}
