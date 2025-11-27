{pkgs, ...}: {
  imports = [
    ./pgadmin.nix
  ];
  services.postgresql = {
    enable = true;

    package = pkgs.postgresql_16;

    # default user: $ sudo -u postgres psql
    # active user(our-case its tech1savvy): $ psql
    # ensureUsers = [
    #   {
    #     name = "tech1savvy";
    #     ensureClauses = {
    #       login = true;
    #       createdb = true;
    #     };
    #   }
    # ];
    # ensureDatabases = [ "tech1savvy" ];
  };
}
