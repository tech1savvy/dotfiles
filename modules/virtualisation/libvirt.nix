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
    virtio-win
    win-spice
  ];

  # Manage the virtualisation services
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        # ovmf.enable = true; # ovmf are available by default now
        # ovmf.packages = [pkgs.OVMFFull.fd];
      };
    };
    spiceUSBRedirection.enable = true;
  };
  services.spice-vdagentd.enable = true;
}
