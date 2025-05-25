{
  config,
  lib,
  pkgs,
  ...
}:
with lib; {
  options.minecraft.prismlauncher.enable = mkEnableOption "Enable Prism Launcher (Minecraft launcher)";

  config = mkIf config.minecraft.prismlauncher.enable {
    environment.systemPackages = with pkgs; [
      prismlauncher
    ];
  };
}
