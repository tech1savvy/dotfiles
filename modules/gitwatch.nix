{ config, lib, pkgs, ... }:

let
  inherit (lib)
    mapAttrs'
    mkEnableOption
    mkOption
    nameValuePair
    optionalString
    types
    ;

  mkSystemdService =
    name: cfg:
    nameValuePair "gitwatch-${name}" (
      let
        getvar = flag: var: optionalString (cfg.${var} != null) "${flag} ${cfg.${var}}";
        branch = getvar "-b" "branch";
        remote = getvar "-r" "remote";
        message = getvar "-m" "message";
      in
      rec {
        inherit (cfg) enable;
        after = [ "network-online.target" ];
        wants = after;
        wantedBy = [ "multi-user.target" ];
        description = "gitwatch for ${name}";
        path = with pkgs; [
          gitwatch
          git
          openssh
        ];
        script = ''
          ${optionalString (cfg.remote != null) ''
            if ! [ -d "${cfg.path}" ]; then
              git clone ${branch} "${cfg.remote}" "${cfg.path}"
            fi
          ''}
          gitwatch ${remote} ${message} ${branch} ${cfg.path}
        '';
        serviceConfig.User = cfg.user;
      }
    );
in
{
  disabledModules = [ "services/monitoring/gitwatch.nix" ];

  options.services.gitwatch = mkOption {
    description = "A set of git repositories to watch for.";
    default = {};
    type = types.attrsOf (types.submodule {
      options = {
        enable = mkEnableOption "watching for repo";
        path = mkOption {
          description = "The path to repo in local machine";
          type = types.str;
        };
        user = mkOption {
          description = "The name of services's user";
          type = types.str;
          default = "root";
        };
        remote = mkOption {
          description = "Optional url of remote repository";
          type = types.nullOr types.str;
          default = null;
        };
        message = mkOption {
          description = "Optional text to use in as commit message";
          type = types.nullOr types.str;
          default = null;
        };
        branch = mkOption {
          description = "Optional branch in remote repository";
          type = types.nullOr types.str;
          default = null;
        };
      };
    });
  };

  config = {
    services.gitwatch."cards" = {
      enable = true;
      branch = "main";
      message = "%d";
      path = "/home/tech1savvy/cards";
      user = "tech1savvy";
    };

    systemd.services = mapAttrs' mkSystemdService config.services.gitwatch;
  };
}
