{ pkgs, config, lib, ... }:
let
  cfg = config.development.rust;
in
{
  options.development.rust.enable = lib.mkEnableOption "Rust development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      rustc
      cargo
    ];
  };
}
