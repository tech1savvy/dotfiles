{
  settings."custom/power" = {
    format = "⏻ ";
    tooltip = false;
    menu = "on-click";
    "menu-file" = "$HOME/.config/waybar/power_menu.xml";
    "menu-actions" = {
      shutdown = "shutdown now";
      reboot = "reboot";
      suspend = "systemctl suspend";
      hibernate = "systemctl hibernate";
    };
  };

  style = ''
    #custom-power {
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }
  '';
}
