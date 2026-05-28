{ config, ... }:
{
  services.firefly-iii = {
    enable = true;

    enableNginx = true;
    settings = {
      # BUG: cannot access home dir (try sops)
      APP_KEY_FILE = config.sops.secrets."firefly-iii/app-key".path;
    };
  };
}
