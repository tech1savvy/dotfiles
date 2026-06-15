{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.dns.filter.blocky;
in
{
  options.dns.filter.blocky = {
    enable = mkEnableOption "Blocky DNS server";
  };

  config = mkIf cfg.enable {
    networking.nameservers = [
      "127.0.0.1"
    ];

    environment.systemPackages = [
      pkgs.blocky
    ];

    services.blocky = {
      enable = true;

      settings = {
        ports.dns = 53;
        ports.http = 4000;

        upstreams.groups.default = [
          "185.228.168.10"
          "185.228.169.11"
        ];

        # 1. Define custom/local domain lists
        blocking = {
          denylists = {
            # Block YouTube via an inline multi-line domain list
            youtube = [
              ''
                youtube.com
                www.youtube.com
                youtu.be
              ''
            ];
          };

          clientGroupsBlock = {
            default = [
              "youtube"
            ];
          };

          # 2. Define the schedules (periods of ACTIVITY for the blocklist)
          # e.g., the blocklist is ACTIVE from 21:00 to 17:00 (blocked), and INACTIVE from 17:00 to 21:00 (allowed)
          schedules = {
            blocked-youtube-hours = {
              weekdays = [ "sun" "mon" "tue" "wed" "thu" "fri" "sat" ];
              start = "21:00";
              end = "17:00";
            };
          };

          # 3. Apply the schedules to your lists
          listSchedules = {
            youtube = [ "blocked-youtube-hours" ];
          };
        };
      };
    };
  };
}
