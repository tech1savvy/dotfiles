{
  settings.network = {
    interval = 1;
    format = " {bandwidthUpBytes}  {bandwidthDownBytes}";
    "format-wifi" = " {bandwidthUpBytes}  {bandwidthDownBytes}";
    "format-ethernet" = " {bandwidthUpBytes}  {bandwidthDownBytes}";
    "format-disconnected" = "󰌙 ";
    "format-linked" = "󰈁 {ifname}";

    "format-alt" = "{ipaddr}/{cidr}";
    "format-alt-wifi" = "{ipaddr}  ";
    "format-alt-ethernet" = "{ipaddr} 󰌘";

    "tooltip-format" = "";
    "tooltip-format-wifi" = "{essid} ({signalStrength}%)  ";
    "tooltip-format-ethernet" = "{ifname} 󰌘";
    "tooltip-format-disconnected" = "";

    "min-length" = 20;
    "max-length" = 24;
  };

  style = ''
    #network {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 2px 1px 2px 1px;
      padding: 1px 6px;
    }
  '';
}
