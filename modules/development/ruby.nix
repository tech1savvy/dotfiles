{ pkgs, config, lib, ... }:
let
  cfg = config.development.ruby;
in
{
  options.development.ruby.enable = lib.mkEnableOption "Ruby development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      ruby
    ];
  };
}
