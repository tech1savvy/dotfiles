{ ... }: {
  imports = [
    ./limine.nix
  ];

  boot = {
    supportedFilesystems = [ "ntfs" ];
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      timeout = 3;
    };
  };
}
