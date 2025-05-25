{
  config,
  pkgs,
  ...
}: {
  # Enable the Sunshine service
  services.sunshine = {
    enable = true;
    autoStart = true; # Start automatically with graphical session
    capSysAdmin = true; # Needed for Wayland; omit if using Xorg
    openFirewall = true; # Open necessary ports automatically

    # Optional: Provide static configuration (disables Web UI config)
    # settings = {
    #   sunshine_name = "nixos";
    #   # Add further Sunshine settings here
    # };
  };

  # Optional: Manual firewall configuration (if you want fine control)
  # networking.firewall = {
  #   enable = true;
  #   allowedTCPPorts = [ 47984 47989 47990 48010 ];
  #   allowedUDPPortRanges = [
  #     { from = 47998; to = 48000; }
  #     { from = 8000; to = 8010; }
  #   ];
  # };

  # Optional: Kernel module for input emulation (if needed)
  # boot.kernelModules = [ "uinput" ];
}
