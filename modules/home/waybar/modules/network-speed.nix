{
  settings."network#speed" = {
    interval = 1;
    format = "{ifname}";
    "format-wifi" = " {bandwidthUpBytes}  {bandwidthDownBytes}";
    "format-ethernet" = " {bandwidthUpBytes}  {bandwidthDownBytes}";
    "format-disconnected" = "󰌙 ";
    "format-linked" = "󰈁 {ifname} (No IP)";
    "min-length" = 24;
    "max-length" = 24;
    "tooltip-format" = "{ipaddr}";
    "tooltip-format-wifi" = "{essid} {signalStrength}%";
    "tooltip-format-ethernet" = "{ifname} 󰌘";
    "tooltip-format-disconnected" = "󰌙 Disconnected";
  };

  style = ''
    #network.speed {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
