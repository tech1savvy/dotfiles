{pkgs, ...}: {
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings.General.Experimental = true; # Helps some devices
  };
  services.blueman.enable = true;

  systemd.services.unblock-bluetooth = {
    description = "Unblock Bluetooth at boot";
    wantedBy = ["multi-user.target"];
    serviceConfig.ExecStart = "/run/current-system/sw/bin/rfkill unblock bluetooth";
  };
}
