{
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [
      80 # http
      443 # https

      3000
      2283 # immich

      # moonlight

      4096 # opencode
    ];

    allowedUDPPorts = [
      # moonlight
      47999
      48000
      48010
    ];
  };
}
