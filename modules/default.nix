{
  imports = [
    ./homelab

    ./stylix.nix


    # Window Managers
    ./environment/niri

    ./ansible

    ./pay-respects.nix

    # devops
    ./prometheus
    # ./grafana

    ./cloud/storage.nix

    ./databases

    ./authentication
    ./obs-studio.nix
  ];
}
