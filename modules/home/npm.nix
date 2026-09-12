{ config, ... }:
{
  programs.npm = {
    enable = true;
    # Nix store is read-only, so global installs must go to a writable prefix
    settings.prefix = "${config.home.homeDirectory}/.npm-global";
  };
}
