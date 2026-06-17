{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.dns.filter.blocky;

  streaming = import ./denylists/streaming.nix;
  local = import ./denylists/localBlocklist.nix;

  blocking = {
    denylists = (streaming.denylists or {}) // (local.denylists or {});
    clientGroupsBlock.default =
      (streaming.clientGroupsBlock.default or [])
      ++ (local.clientGroupsBlock.default or []);
    listSchedules =
      (streaming.listSchedules or {})
      // (local.listSchedules or {});
    schedules = import ./schedules/working-hours.nix;
  };
in
{
  options.dns.filter.blocky = {
    enable = mkEnableOption "Blocky DNS server";
  };

  config = mkIf cfg.enable {
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

        inherit blocking;
      };
    };
  };
}
