{
  programs.keepassxc = {
    autostart = false;
    enable = false;
    settings = {
      FdoSecrets.Enabled = true; # Enable Secret Service Integration
    };
  };
}
