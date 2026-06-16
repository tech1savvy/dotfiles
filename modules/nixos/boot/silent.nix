{ config, lib, ... }:
with lib;
{
  options.boot.silent.enable = mkEnableOption "No logs during boot";

  config = mkIf config.boot.silent.enable {
    boot = {
      consoleLogLevel = 0;
      initrd.verbose = false;
      kernelParams = [
        "quiet"
        "udev.log_level=3"
      ];
    };
  };
}
