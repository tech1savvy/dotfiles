{config,pkgs,package, ...}:{
  services.nagios = {
    enable = true;
    objectDefs = 
      (map (x: "${pkgs.nagios}/etc/objects/${x}.cfg") [ "templates" "timeperiods" "commands" ]) ++
      [ ./main.cfg ];
    # extraConfig = {
    #   # for verbose logs
    #   debug_level = "-1";
    #   debug_file = "/var/log/nagios/debug.log";
    # };

    enableWebInterface = false;
    plugins = with pkgs; [
      monitoring-plugins
      msmpt
      mailutils
    ];

    # virtualHost = {
    #   hostName = "example.org";
    #   adminAddr = "webmaster@example.org";
    #   enableSSL = true;
    #   sslServerCert = "/var/lib/acme/example.org/full.pem";
    #   sslServerKey = "/var/lib/acme/example.org/key.pem";
    # };
  };

  # # for nagios web-interface
  # services.phpfpm.pools.nagios = {
  #   user = "nagios";
  #   settings = {
  #     "listen.owner" = config.services.nginx.user;
  #     "pm" = "ondemand";
  #     "pm.max_children" = 2;
  #     "pm.process_idle_timeout" = "60s";
  #     "pm.max_requests" = 200;
  #   };
  # };
  # services.fcgiwrap = {
  #   enable = true;
  #   user = "nagios";
  # };
  # services.nginx.virtualHosts."nagios.example.com" = {
  #   forceSSL = true;
  #   enableACME = true;
  #   root = "${pkgs.nagios}/share/";
  #   extraConfig = ''
  #         index index.php;
  #         auth_basic "Nagios";
  #         auth_basic_user_file /var/lib/nagios/htpasswd;
  #   '';
  #   locations = {
  #     "/".tryFiles = "$uri /index.php";
  #     "/nagios/".alias = "${pkgs.nagios}/share/";
  #     "~ \\.cgi$" = {
  #       root = "${pkgs.nagios}/sbin/";
  #       extraConfig = ''
  #             rewrite ^/nagios/cgi-bin/(.*)$ /$1;
  #
  #             include ${pkgs.nginx}/conf/fastcgi.conf;
  #             include ${pkgs.nginx}/conf/fastcgi_params;
  #
  #             fastcgi_param AUTH_USER       $remote_user;
  #             fastcgi_param REMOTE_USER     $remote_user;
  #             fastcgi_param SCRIPT_FILENAME ${pkgs.nagios}/share/sbin$fastcgi_script_name;  
  #
  #             fastcgi_pass unix:${config.services.fcgiwrap.socketAddress};
  #       '';
  #     };
  #     "~* \\.php$" = {
  #       tryFiles = "$uri =404";
  #       extraConfig = ''
  #             include ${pkgs.nginx}/conf/fastcgi_params;
  #             include ${pkgs.nginx}/conf/fastcgi.conf;
  #             fastcgi_split_path_info ^(.+\.php)(/.+)$;
  #             fastcgi_pass unix:${config.services.phpfpm.pools.nagios.socket};
  #             fastcgi_index index.php;
  #       '';
  #     };
  #   };
  # };
  #
  # services.httpd = {
  #   enable = true;
  #
  #   virtualHosts = {
  #     localhost = {
  #       documentRoot = "${package.out}/htdocs";
  #     };
  #   };
  # };
}
