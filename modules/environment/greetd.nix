{ pkgs, ... }:
{
  services.greetd = {
    enable = true;
    useTextGreeter = true;

    settings = {
      default_session = {
        command =
          "${pkgs.tuigreet}/bin/tuigreet"
          + " --cmd 'uwsm start hyprland-uwsm.desktop'"
          + " --greeting '**** The Armoury ****'"
          + " --time"
          + " --remember --remember-session"
          + " --kb-command 10"
          + " --kb-sessions 11"
          + " --kb-power 12";
        user = "tech1savvy";
      };
    };
  };
}
