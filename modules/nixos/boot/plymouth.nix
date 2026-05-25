{
  config,
  lib,
  ...
}:
with lib;
{
  options.splash.plymouth.enable = mkEnableOption "";

  config = mkIf config.splash.plymouth.enable {
    boot = {
      plymouth = {
        enable = true;
      };

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
