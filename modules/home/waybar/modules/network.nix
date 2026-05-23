{
  settings.network = {
    "format-wifi" = "{essid} ({signalStrength}%)  ";
    "format-ethernet" = "{ipaddr}/{cidr}  ";
    "tooltip-format" = "{ifname} via {gwaddr}  ";
    "format-linked" = "{ifname} (No IP)  ";
    "format-disconnected" = "Disconnected ⚠";
    "format-alt" = "{ifname}: {ipaddr}/{cidr}";
  };

  style = ''
    #network {
      background: @base01;
      border: 1px solid @base02;
      color: @base06;
      margin: 4px 4px 4px 0px;
      padding: 1px 6px;
    }
  '';
}
