{
  # Pi-hole web interface
  services.pihole-web = {
    enable = false;
    ports = [ "8081" ];
  };
  # DNS Server
  services.pihole-ftl = {
    enable = false;

    useDnsmasqConfig = false;
    settings = {
      dns = {
        upstreams = [
          "185.228.168.10"
          "185.228.169.11"
        ];
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
        enabled = false;
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
