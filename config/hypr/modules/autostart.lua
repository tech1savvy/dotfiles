-- utilities
hl.on("hyprland.start", function()
  hl.exec_cmd("waybar")
  hl.exec_cmd("nm-applet --indicator")
  hl.exec_cmd("swaync")
  hl.exec_cmd("waybar_timer serve")
  hl.exec_cmd(
    "mpvpaper -o \"no-audio --loop-playlist --panscan=1.0 --no-keepaspect-window\" '*' ~/Wallpapers/cat-in-the-swamp-moewalls-com.mp4")

  -- applications
  hl.exec_cmd("wayneko", { workspace = "top" })
end)
