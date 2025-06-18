{ config, lib, pkgs, ... }: {
  services.interception-tools = {
    enable = true;
    plugins = with pkgs; [interception-tools-plugins.dual-function-keys];
    
    udevmonConfig = ''
      - JOB: "${pkgs.interception-tools}/bin/intercept -g $DEVNODE | ${pkgs.interception-tools-plugins.dual-function-keys}/bin/dual-function-keys -c /etc/interception/dual-function-keys.yaml | ${pkgs.interception-tools}/bin/uinput -d $DEVNODE"
        DEVICE:
          EVENTS:
            EV_KEY: [KEY_CAPSLOCK, KEY_LEFTSHIFT, KEY_RIGHTSHIFT]
    '';
  };

  environment.etc."interception/dual-function-keys.yaml".text = ''
    MAPPINGS:
      - KEY: KEY_CAPSLOCK
        TAP: KEY_ESC
        HOLD: KEY_LEFTCTRL
      - KEY: KEY_LEFTSHIFT
        TAP: KEY_HOME
        HOLD: KEY_LEFTSHIFT
      - KEY: KEY_RIGHTSHIFT
        TAP: KEY_END
        HOLD: KEY_RIGHTSHIFT
  '';
}
