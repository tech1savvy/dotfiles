{
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./minecraft/luncher.nix
    ./minecraft/server.nix
    ./steam.nix
    # ./streaming.nix
    # ./emulation.nix
  ];

  # Enable Prism Launcher (Minecraft launcher)
  minecraft.prismlauncher.enable = true;

  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.modesetting.enable = true;
}
