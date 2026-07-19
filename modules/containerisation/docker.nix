{
  # Enable Docker service
  virtualisation.docker.enable = true;

  # Registry mirrors for faster pulls
  virtualisation.docker.daemon.settings = {
    registry-mirrors = [
      "https://mirror.gcr.io"
      "https://ghcr.io"
    ];
  };

  # Example: Add users to the docker group for socket access
  users.users.tech1savvy.extraGroups = [ "docker" ];
}
