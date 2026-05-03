{ ... }: {
  imports = [
    ./wifi.nix
    ./dns.nix
    ./hosts.nix
    ./firewall.nix
    ./filters.nix
  ];
}
