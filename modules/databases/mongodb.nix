{ pkgs, ... }:
{
  # mongoDB community edition
  services.mongodb = {
    # port: 27017
    enable = true;
    package = pkgs.mongodb-ce;
  };
  # systemd.services.mongodb.wantedBy = pkgs.lib.mkForce []; # make the service do not auto-start
}
