{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # for testing input key presses
    evtest
  ];

  services.kanata = {
    enable = true;
    package = pkgs.kanata-with-cmd;
    keyboards = {
      internalKeyboard = {
        devices = [
          "/dev/input/by-path/pci-0000:00:14.3-platform-VPC2004:00-event"
          "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:4:1.0-event"
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:4:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:4:1.0-event"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:4:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.4-usbj-0:3:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.4-usbv2-0:3:1.0-event-kbd"
        ];
        extraDefCfg = "
          process-unmapped-keys yes
          danger-enable-cmd yes
          ";
        config = builtins.readFile /home/tech1savvy/dotfiles/config/kanata/internalKeyboard.kbd;
      };
      rightUSBboard = {
        devices = [
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:2.3:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:2.3:1.1-event"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:2.3:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:2.3:1.1-event"
        ];
        extraDefCfg = "
          process-unmapped-keys yes
          danger-enable-cmd yes
          ";
        config = builtins.readFile /home/tech1savvy/dotfiles/config/kanata/RightUSBboard.kbd;
      };
      leftUSBboard = {
        devices = [
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:2.1:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usb-0:2.1:1.1-event"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:2.1:1.0-event-kbd"
          "/dev/input/by-path/pci-0000:05:00.3-usbv2-0:2.1:1.1-event"
        ];
        extraDefCfg = "
          process-unmapped-keys yes
          danger-enable-cmd yes
          ";
        config = builtins.readFile /home/tech1savvy/dotfiles/config/kanata/LeftUSBboard.kbd;
      };
    };
  };
}
