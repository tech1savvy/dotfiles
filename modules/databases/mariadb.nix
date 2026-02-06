{ pkgs, ... }:
{

  # mariadb: opensource drop-in repalcment for mysql
  services.mysql = {
    enable = false;
    package = pkgs.mariadb;
  };

  systemd.services.mysql.wantedBy = pkgs.lib.mkForce [ ]; # make the service do not auto-start
}
