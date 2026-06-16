{ config, lib, ... }:
with lib;
{
  options.boot.splash.plymouth.enable = mkEnableOption "Plymouth graphical boot splash";

  config = mkIf config.boot.splash.plymouth.enable {
    boot = {
      plymouth.enable = true;

      consoleLogLevel = 3;
      initrd.verbose = false;
      kernelParams = [
        "quiet"
        "rd.udev.log_level=3"
        "rd.systemd.show_status=auto"
      ];
    };

    stylix.targets.plymouth = {
      enable = true;
      logoAnimated = true;
    };
  };
}
