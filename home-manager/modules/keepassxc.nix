{
  programs.keepassxc = {
    autostart = true;
    enable = true;
    settings = {
      FdoSecrets.Enabled = true; # Enable Secret Service Integration
    };
  };

  xdg.autostart.enable = true;
}
