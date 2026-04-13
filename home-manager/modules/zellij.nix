# { pkgs, ... }:
{
  programs.zellij = {
    enable = true;

    enableBashIntegration = false;
    enableZshIntegration = false;
    enableFishIntegration = false;

    attachExistingSession = false;
    exitShellOnExit = false;

    # Using this until post_command_discovery_hook becomes available
    # source: https://github.com/zellij-org/zellij/issues/2925#issuecomment-3153295471
    # FIX: solution did not work
    # package = pkgs.zellij.overrideAttrs (oldAttrs: rec {
    #   version = "0.43.0";
    #   src = oldAttrs.src.override {
    #     tag = null;
    #     rev = "b634a57de8f0025de36dd19e3e7916d2b27e38cd";
    #     hash = "sha256-a0JJD+9neYOyDx/gAxPIdthTg695ShU93palExu3Vvo=";
    #   };
    #   cargoDeps = pkgs.rustPlatform.fetchCargoVendor {
    #     inherit src;
    #     hash = "sha256-P4VabkEFBvj2YkkhXqH/JZp3m3WMKcr0qUMhdorEm1Q=";
    #   };
    # });
  };

}
