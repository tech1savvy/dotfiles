{
  # Pi-hole web interface
  services.pihole-web = {
    enable = true;
    ports = [ "8080" ];
  };
  # DNS Server
  services.pihole-ftl = {
    enable = true;

    useDnsmasqConfig = false;
    settings = {
      dns = {
        upstreams = [ "8.8.8.8" ];
      };
    };

    lists = [
      {
        enabled = true;
        url = "https://raw.githubusercontent.com/tech1savvy/dotfiles/refs/heads/main/domains/blocklist.txt";
        type = "block";
        description = "tech1savvy's blocklist";
      }
      {
        enabled = false;
        url = "https://raw.githubusercontent.com/tech1savvy/dotfiles/refs/heads/main/domains/whitelist.txt";
        type = "allow";
        description = "tech1savvy's allowlist";
      }
      {
        enabled = true;
        url = "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts";
        description = "social media blocklist (Steven Black)";
        type = "block";
      }
      {
        enabled = true;
        url = "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts";
        description = "unified adlist (Steven Black)";
        type = "block";
      }
      {
        enabled = true;
        url = "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts";
        description = "fakenews + gambling + porn blocklist (Steven Black)";
        type = "block";
      }
    ];
  };
}
