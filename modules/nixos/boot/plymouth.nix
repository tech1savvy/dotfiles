{
  config,
  lib,
  ...
}:
with lib;
{
  options.boot.splash.plymouth.enable = mkEnableOption "";

  config = mkIf config.boot.splash.plymouth.enable {
    boot = {
      plymouth.enable = true;

      kernelParams = [
        "splash"
      ];
    };
    stylix.targets.plymouth = {
      enable = true;
      logoAnimated = true;
    };
  };
}
