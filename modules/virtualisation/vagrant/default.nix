{
  config,
  lib,
  pkgs,
  ...
}:

{
  options.virtualisation.vagrant.enable = lib.mkEnableOption "Vagrant";

  config = lib.mkIf config.virtualisation.vagrant.enable {
    environment.systemPackages = [ pkgs.vagrant ];

    # Unblock vagrants DHCP requests of IP addresses for created VMs
    # Trust libvirt bridge interfaces for VM networking (required for Vagrant DHCP)
    networking.firewall.trustedInterfaces = [
      "virbr0"
      "virbr1"
      "virbr2"
    ];
    # Don't let NetworkManager manage libvirt bridges (prevents conflicts)
    networking.networkmanager.unmanaged = [
      "virbr0"
      "virbr1"
      "virbr2"
    ];
  };
}
