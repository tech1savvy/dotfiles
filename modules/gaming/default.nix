{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./minecraft/luncher.nix
    ./minecraft/server.nix
  ];

  # Enable Prism Launcher (Minecraft launcher)
  minecraft.prismlauncher.enable = true;

  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia.modesetting.enable = true;

  programs.steam.enable = true;
  # better sandbox for games
  programs.steam.gamescopeSession.enable = true;

  # better optimisation for game processes
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    mangohud

    # proton GE
    protonup
  ];

  # protonup download dir
  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  # run protonup cmd once to download required files
}
