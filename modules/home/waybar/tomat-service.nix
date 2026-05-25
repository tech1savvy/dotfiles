{
  services.tomat = {
    enable = true;
    settings = {
      timer = {
        work = 90;
        break = 10;
        long_break = 60;
        sessions = 8;
      };
      notification.enabled = true;
      sound.enabled = true;
    };
  };
}
