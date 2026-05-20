{
  home.sessionVariables = {
    # Default editors
    EDITOR = "nvim";
    VISUAL = "nvim";

    # Tell pnpm where to find and store global
    PNPM_HOME = "$HOME/.local/share/pnpm";

    SSH_AUTH_SOCK = "$HOME/.bitwarden-ssh-agent.sock";

    RESTIC_REPOSITORY = "rclone:gdrive:/backups";
    RESTIC_PASSWORD_FILE = "/run/secrets/restic-gdrive-repo-password";
  };
}
