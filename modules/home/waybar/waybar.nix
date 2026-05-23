{ config, pkgs, lib, ... }:
let
  c = config.lib.stylix.colors;
  mods = (import ./modules) c;
  mergedSettings = builtins.foldl' (acc: m: acc // m.settings) {} mods;
  mergedStyle = ''
    * {
      font-size: 11px;
    }
  '' + builtins.concatStringsSep "\n" (builtins.map (m: m.style) mods);
in {
  home.file.".config/waybar/power_menu.xml".text = ''
    <?xml version="1.0" encoding="UTF-8"?>
    <interface>
      <object class="GtkMenu" id="menu">
        <child>
          <object class="GtkMenuItem" id="suspend">
            <property name="label">Suspend</property>
          </object>
        </child>
        <child>
          <object class="GtkMenuItem" id="hibernate">
            <property name="label">Hibernate</property>
          </object>
        </child>
        <child>
          <object class="GtkMenuItem" id="shutdown">
            <property name="label">Shutdown</property>
          </object>
        </child>
        <child>
          <object class="GtkSeparatorMenuItem" id="delimiter1"/>
        </child>
        <child>
          <object class="GtkMenuItem" id="reboot">
            <property name="label">Reboot</property>
          </object>
        </child>
      </object>
    </interface>
  '';

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    settings = [({
      layer = "top";
      position = "top";
      height = 0;
      spacing = 0;
      "margin-top" = 0;
      "margin-right" = 0;
      "margin-bottom" = -1;
      "margin-left" = 0;

      modules-left = [

        "hyprland/workspaces"
        "hyprland/submap"
        "custom/timer"
      ];
      modules-center = [
        "custom/wakatime"
        "mpris"
        "cava"
      ];
      modules-right = [

        "pulseaudio"
        "pulseaudio#microphone"
        "network"
        "network#speed"
        "cpu"
        "memory"
        "battery"
        "clock"
        "tray"
        "custom/power"
      ];
    } // mergedSettings)];

    style = lib.mkAfter mergedStyle;
  };
}
