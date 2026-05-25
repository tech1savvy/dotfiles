{ ... }:
{
  imports = [
    ./limine.nix
    ./plymouth.nix
  ];

  splash.plymouth.enable = false;

  boot = {
    tmp.cleanOnBoot = true;
    supportedFilesystems = [ "ntfs" ];
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      timeout = 3;
    };
  };
}
