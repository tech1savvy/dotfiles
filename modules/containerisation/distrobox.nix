{
  config,
  pkgs,
  lib,
  ...
}: {
  virtualisation.podman = { # by default, distrobox uses podman
    enable = true;
  };
  environment.systemPackages = with pkgs; [ 
    distrobox
    boxbuddy # gui for distrobox
  ];
}