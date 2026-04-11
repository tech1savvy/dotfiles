{ pkgs, ... }:
{
  imports = [
    # ./pgadmin.nix
  ];

  environment.systemPackages = with pkgs; [
    postgresql_16 # for $psql, no daemon
  ];

  services.postgresql = {
    enable = false; # use docker per project instead

    package = pkgs.postgresql_16;

    # default user: $ sudo -u postgres psql
    # active user(our-case its tech1savvy): $ psql
    ensureUsers = [
      {
        name = "tech1savvy";
        ensureClauses = {
          login = true;
          createdb = true;
        };
      }
    ];
    ensureDatabases = [ "tech1savvy" ];
  };
}
