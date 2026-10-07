{
  imports = [
    ./minecraft/luncher.nix
    ./minecraft/server.nix
    # ./steam.nix
    # ./streaming.nix
    # ./emulation.nix
  ];

  minecraft.prismlauncher.enable = false;

  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.modesetting.enable = true;
}
