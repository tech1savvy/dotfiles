{
  config,
  lib,
  pkgs,
  ...
}:
with lib;
let
  cfg = config.peripherals.kanata;
  internalEnabled = cfg.internalKeyboard.enable;
  rightEnabled = cfg.rightUSBKeyboard.enable;
  leftEnabled = cfg.leftUSBKeyboard.enable;
  anyEnabled = internalEnabled || rightEnabled || leftEnabled;
in
{

  options.peripherals.kanata = {
    internalKeyboard.enable = mkEnableOption "";
    rightUSBKeyboard.enable = mkEnableOption "";
    leftUSBKeyboard.enable = mkEnableOption "";
  };

  config = mkIf anyEnabled {

    environment.systemPackages = with pkgs; [
      evtest # for testing input key presses
    ];

    services.kanata = {
      enable = true;
      package = pkgs.kanata-with-cmd;
      keyboards = {
        internalKeyboard = mkIf internalEnabled {
          configFile = "/home/tech1savvy/dotfiles/config/kanata/internalKeyboard.kbd";
          # port = 6666;
        };
        rightUSBKeyboard = mkIf rightEnabled {
          configFile = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboard.kbd";
          # configFile = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboardInvert.kbd";
          # port = 7777;
        };
        leftUSBKeyboard = mkIf leftEnabled {
          configFile = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboard.kbd";
          # configFile = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboardInvert.kbd";
          # port = 5555;
        };
      };
    };

    # Allow the service to access config files stored in home dir
    systemd.services = {
      kanata-internalKeyboard = mkIf internalEnabled {
        serviceConfig = {
          ProtectHome = lib.mkForce "tmpfs";
          BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/internalKeyboard.kbd";

          After =
            (lib.optional rightEnabled "kanata-rightUSBKeyboard.service")
            ++ (lib.optional leftEnabled "kanata-leftUSBKeyboard");

          wantedBy = lib.mkForce [ ];
        };
      };
      kanata-rightUSBKeyboard = mkIf rightEnabled {
        serviceConfig = {
          ProtectHome = lib.mkForce "tmpfs";
          BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboard.kbd";
          # BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/rightUSBKeyboardInvert.kbd";

          wantedBy = lib.mkForce [ ];
        };
      };
      kanata-leftUSBKeyboard = mkIf leftEnabled {
        serviceConfig = {
          ProtectHome = lib.mkForce "tmpfs";
          BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboard.kbd";
          # BindReadOnlyPaths = "/home/tech1savvy/dotfiles/config/kanata/leftUSBKeyboardInvert.kbd";

          wantedBy = lib.mkForce [ ];
        };
      };
    };
  };
}
