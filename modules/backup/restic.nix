{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    restic
  ];

  # TODO: add rclone config, the nix way

  services.restic.backups = {
    gdrive = {
      user = "tech1savvy";
      repository = "rclone:gdrive:/backups";
      initialize = true; # initializes the repo, don't set if you want manual control
      passwordFile = config.sops.secrets."restic/gdrive/repo-password".path;

      paths = [
        "/home/tech1savvy/.agents"
        "/home/tech1savvy/.android"
        "/home/tech1savvy/.aws"
        "/home/tech1savvy/.bootdev.yaml"
        "/home/tech1savvy/.config/Code/User/keybindings.json"
        "/home/tech1savvy/.config/Code/User/settings.json"
        "/home/tech1savvy/.config/atuin"
        "/home/tech1savvy/.gitconfig"
        "/home/tech1savvy/.gnupg"
        "/home/tech1savvy/.local/share/Anki2"
        "/home/tech1savvy/.local/share/PrismLauncher/accounts.json"
        "/home/tech1savvy/.local/share/PrismLauncher/prismlauncher.cfg"
        "/home/tech1savvy/.local/share/atuin"
        "/home/tech1savvy/.local/share/dolphin"
        "/home/tech1savvy/.local/share/qutebrowser"
        "/home/tech1savvy/.local/share/rbw"
        "/home/tech1savvy/.opencommit"
        "/home/tech1savvy/.ssh"
        "/home/tech1savvy/.task"
        "/home/tech1savvy/.taskrc"
        "/home/tech1savvy/.tmate.conf"
        "/home/tech1savvy/.vit"
        "/home/tech1savvy/.wakatime.cfg"
        "/home/tech1savvy/Documents"
        "/home/tech1savvy/Downloads/Dropbox"
        "/home/tech1savvy/Pictures"
        "/home/tech1savvy/Projects"
        "/home/tech1savvy/cards"
        "/home/tech1savvy/immich"
      ];

      pruneOpts = [
        "--keep-daily 7"
        "--keep-weekly 5"
        "--keep-monthly 12"
        "--keep-yearly 75"
      ];

      extraBackupArgs = [
        "-v"
        "-v"
      ];

      timerConfig = {
        OnCalendar = "daily";
        Persistent = true;
      };
    };
  };
}
