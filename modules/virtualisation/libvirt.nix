{
  pkgs,
  ...
}:
{
  # Enable virt-manager and its dconf settings
  programs.virt-manager.enable = true;

  # Add user to libvirtd group
  users.users.tech1savvy.extraGroups = [ "libvirtd" ];

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    # virtio-win  # only needed when running Windows VMs
    win-spice
  ];

  # Manage the virtualisation services
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
      };
    };
    spiceUSBRedirection.enable = true;
  };
  services.spice-vdagentd.enable = true;
}
