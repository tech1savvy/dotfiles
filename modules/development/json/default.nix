{ lib, ... }:
{
  imports = [
    ./parsers.nix
  ];

  options.development.json.enable = lib.mkEnableOption "JSON development tools";
}
