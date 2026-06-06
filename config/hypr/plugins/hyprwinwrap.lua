-- readme: https://github.com/hyprwm/hyprland-plugins/tree/main/hyprwinwrap
hl.on("hyprland.start", function()
  hl.exec_cmd("hyprctl plugin load \"$HYPR_PLUGIN_DIR/lib/libhyprwinwrap.so\"")

  hl.config({
    plugin = {
      hyprwinwrap = {
        -- class is an EXACT match and NOT a regex!
        class = "background-app",
        -- you can also use title
        title = "background-app",
        -- you can add the position of the window in a percentage
        pos_x = 25,
        pos_y = 30,
        -- you can add the size of the window in a percentage
        size_x = 40,
        size_y = 70,
      },
    },
  })

  hl.exec_cmd("kitty --class=\"background-app\"")
end)
