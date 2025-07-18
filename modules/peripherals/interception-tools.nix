{ config, pkgs, ... }:

{
  services.interception-tools = {
    enable = true;

    plugins = [
      pkgs.interception-tools-plugins.dual-function-keys
    ];

    udevmonConfig = ''
      - JOB: "${pkgs.interception-tools}/bin/intercept -g $DEVNODE | \
              ${pkgs.interception-tools-plugins.dual-function-keys}/bin/dual-function-keys -c /etc/dual-function-keys.yaml | \
              ${pkgs/interception-tools}/bin/uinput -d $DEVNODE"
        DEVICE:
          - /dev/input/by-path/pci-0000:05:00.3-usb-0:2.3:1.0-event-kbd
    '';
  };

  environment.etc."dual-function-keys.yaml".text = ''
    MAPPINGS:
      - KEY: KEY_A
        TAP: KEY_J
        HOLD: KEY_J
  '';
}

