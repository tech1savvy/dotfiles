{
  services.firefly-iii = {
    enable = true;

    enableNginx = true;
    settings = {
      # BUG: cannot access home dir
      APP_KEY_FILE = /home/tech1savvy/dotfiles/secrets/firefly-iii-key.txt;
    };
  };
}
