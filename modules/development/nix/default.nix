{
  pkgs,
  config,
  lib,
  ...
}:
let
  cfg = config.development.nix;
in
{
  imports = [
    ./nix-index.nix
  ];

  options.development.nix.enable = lib.mkEnableOption "Nix development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      nvd
      nixfmt
    ];
  };
}
