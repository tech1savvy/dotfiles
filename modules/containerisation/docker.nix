{
  config,
  pkgs,
  lib,
  ...
}: {
  # Enable Docker service
  virtualisation.docker.enable = true;

  # Example: Add users to the docker group for socket access
  users.users.tech1savvy.extraGroups = ["docker"];
}
