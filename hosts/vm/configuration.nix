{ pkgs, ... }:
{
  networking.hostName = "vm";
  users.users.root.password = "";
  users.users.tech1savvy = {
    isNormalUser = true;
    description = "tech1savvy";
    extraGroups = [ "wheel" ];
    password = "";
  };
  system.stateVersion = "25.11";

  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager.i3.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    alacritty
    i3status
    dmenu
  ];

  microvm = {
    vcpu = 4;
    mem = 2049; # QEMU hangs on exactly 2 GB
    graphics = {
      enable = true;
      backend = "gtk";
    };
    volumes = [
      {
        mountPoint = "/var";
        image = "var.img";
        size = 256; # MB
      }
    ];
    shares = [
      {
        proto = "9p";
        tag = "ro-store";
        source = "/nix/store/";
        mountPoint = "/nix/.ro-store";
      }
    ];
    hypervisor = "qemu";
    socket = "control.socket";
  };
}
