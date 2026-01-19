{
  imports = [
    ./homelab
    ./nginx

    ./stylix.nix

    # Display Managers
    ./environment/greetd.nix
    # Window Managers
    ./environment/niri
    ./environment/cosmic.nix

    ./ansible

    ./pay-respects.nix

    # devops
    ./prometheus
    # ./grafana

    ./cloud/storage.nix

    ./databases

    ./authentication
    ./obs-studio.nix

    ./quickshell
    ./droidcam.nix
  ];
}
