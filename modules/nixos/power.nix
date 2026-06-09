{
  # Hibernate if battery below critical
  services.upower = {
    enable = true;
    criticalPowerAction = "Hibernate";
  };

  services.logind.settings.Login = {
    # Closing the lid
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
    HandleLidSwitchDocked = "ignore";
    # Power button
    HandlePowerKey = "hibernate";
  };

  # # Insomina: No sleep whatsoever
  systemd.sleep.settings.Sleep = {
    AllowHibernation = "yes";
    AllowHybridSleep = "no";
    AllowSuspend = "no";
    AllowSuspendThenHibernate = "no";
  };

  # SYSTEM IMMEDIATELY WAKES UP FROM SUSPEND
  # Disable wakeup triggers for all PCIe devices
  services.udev.extraRules = ''
    ACTION=="add", SUBSYSTEM=="pci", DRIVER=="pcieport", ATTR{power/wakeup}="disabled"
  '';
}
