{ ... }:
{
  imports = [
    ./waybar.nix
    ./modules/wakatime-script.nix
  ];

  # TODO: add hwinfo module for temperature + GPU 0/1 usage
}
