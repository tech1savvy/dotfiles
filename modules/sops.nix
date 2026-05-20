{ pkgs, ... }:
{
  sops = {
    defaultSopsFile = ../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    age.keyFile = "/home/tech1savvy/.config/sops/age/keys.txt";

    secrets = {
      "restic/gdrive/repo-password" = {
        owner = "tech1savvy";
      };
      "rclone/gdrive/client-id" = {
        owner = "tech1savvy";
      };
      "rclone/gdrive/client-secret" = {
        owner = "tech1savvy";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    sops
  ];
}
