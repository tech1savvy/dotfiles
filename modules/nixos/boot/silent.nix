{ config, lib, ... }:
with lib;
{
  options.boot.silent.enable = mkEnableOption "No logs during boot";

  config = mkIf config.boot.silent.enable {
    boot = {
      kernelParams = [
        "quiet"
      ];
    };
  };
}
