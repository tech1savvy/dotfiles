{
  config,
  lib,
  pkgs,
  ...
}: {
  # Server Port: 25565
  services.minecraft-server = {
    enable = false;
    eula = true; # Accepts the Minecraft EULA
  };

  # sudo nano /var/lib/minecraft/server.properties
  # sudo systemctl restart minecraft-server

  # configure the Minecraft server

  networking.firewall.allowedTCPPorts = [25565];
}
