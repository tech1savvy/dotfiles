{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    restic
  ];

  services.restic.backups = {
    gdrive = {
      user = "tech1savvy";
      repository = "rclone:gdrive:/backups";
      initialize = true; # initializes the repo, don't set if you want manual control
      passwordFile = "/run/secrets/restic-gdrive-repo-password";

      paths = [
        "/home/tech1savvy/Wallpapers"
      ];
    };
  };
}
