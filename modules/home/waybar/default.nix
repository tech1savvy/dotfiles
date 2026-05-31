{ ... }:
{
  imports = [
    ./waybar.nix
    ./tomat-service.nix
  ];

  # TODO: add hwinfo module for temperature + GPU 0/1 usage
}
