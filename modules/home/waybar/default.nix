{
  imports = [
    ./config.nix
    ./tomat-service.nix
  ];

  stylix.targets.waybar.enable = true;

  # TODO: add hwinfo module for temperature + GPU 0/1 usage
  # TODO: add privacy module https://github.com/Alexays/Waybar/wiki/Module:-Privacy
}
