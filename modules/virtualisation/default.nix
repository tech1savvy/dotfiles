{
  imports = [
    ./libvirt.nix
    ./vagrant
    # ./virtualbox
    # ./waydroid.nix
  ];

  virtualisation.vagrant.enable = true;
}
