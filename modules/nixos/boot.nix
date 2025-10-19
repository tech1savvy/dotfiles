{
  # Use the systemd-boot EFI boot loader.
  boot = {
    kernelParams = ["quiet"];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1; # time before the lastest os generation is auto-selected
    };
  };
}
