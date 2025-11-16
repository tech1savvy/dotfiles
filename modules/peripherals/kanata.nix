{
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
        configFile = "/home/tech1savvy/dotfiles/config/kanata/internalKeyboard.kbd";
        # port = 6666;
      };
      rightUSBKeyboard = {
        configFile = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboard.kbd";
        # port = 7777;
      };
      leftUSBKeyboard = {
        configFile = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboard.kbd";
        # port = 5555;
      };
    };
  };

  # Allow the service to access config files stored in home dir
  systemd.services.kanata-internalKeyboard.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/internalKeyboard.kbd";

    After = ["kanata-rightUSBKeyboard.service" "kanata-leftUSBKeyboard"];

    wantedBy = pkgs.lib.mkForce [];
  };
  systemd.services.kanata-rightUSBKeyboard.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboard.kbd";

    wantedBy = pkgs.lib.mkForce [];
  };
  systemd.services.kanata-leftUSBKeyboard.serviceConfig = {
    ProtectHome = lib.mkForce "tmpfs";
    BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboard.kbd";

    wantedBy = pkgs.lib.mkForce [];
  };
}
