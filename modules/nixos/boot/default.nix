{ ... }:
{
  imports = [
    ./limine.nix
    ./plymouth.nix
    ./silent.nix
  ];

  boot.silent.enable = true;
  boot.splash.plymouth.enable = true;
  boot.limine.enable = false;

  boot = {
    tmp.cleanOnBoot = true;
    supportedFilesystems = [ "ntfs" ];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };
  };
}
