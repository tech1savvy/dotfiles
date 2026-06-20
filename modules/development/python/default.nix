{
  pkgs,
  config,
  lib,
  ...
}:
let
  cfg = config.development.python;
in
{
  imports = [
    ./pygame.nix
  ];

  options.development.python.enable = lib.mkEnableOption "Python development tools";

  config = lib.mkIf cfg.enable {
    environment.systemPackages = with pkgs; [
      python314
      python314Packages.pip
      python314Packages.pipx
      python314Packages.uv
    ];
  };
}
