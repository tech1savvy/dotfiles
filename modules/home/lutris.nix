{ osConfig, pkgs, ... }:
{
  programs.lutris = {
    enable = true;

    steamPackage = osConfig.programs.steam.package;

    winePackages = [ pkgs.wineWow64Packages.stagingFull ];
    protonPackages = [ pkgs.proton-ge-bin ];
    defaultWinePackage = pkgs.proton-ge-bin;

    extraPackages = with pkgs; [
      mangohud
      umu-launcher
      winetricks
      gamescope
      gamemode
    ];

    runners.wine = {
      settings = {
        runner = {
          system_winetricks = true;
          dxvk = true;
          vkd3d = true;
          d3d_extras = true;
          dxvk_nvapi = true;
          esync = true;
          fsync = true;
          fsr = true;
          battleye = true;
          eac = true;
          show_debug = "-all";
          ShowCrashDialog = false;
        };

        system = {
          game_path = "~/Games";
          disable_runtime = true;
          prefer_system_libs = true;
          use_sniper_runtime = false;
          cloud_save_sync = true;
          disable_screen_saver = true;
          disable_compositor = false;
          mangohud = false;
          gamemode = true;
          single_cpu = false;
        };
      };
    };
  };
}
