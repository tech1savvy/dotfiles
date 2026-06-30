{
  config,
  lib,
  ...
}:
with lib;
let
  cfg = config.dns.filter.blocky;

  local = import ./denylists/localBlocklist.nix;

  blocking = {
    denylists = local.denylists or { };
    schedules = local.schedules or { };
    listSchedules = local.listSchedules or { };
    clientGroupsBlock.default = local.clientGroupsBlock.default or [ ];
  };
in
{
  options.dns.filter.blocky = {
    enable = mkEnableOption "Blocky DNS server";
  };

  config = mkIf cfg.enable {

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
