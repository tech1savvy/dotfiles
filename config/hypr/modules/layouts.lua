-- Default window layout
hl.config({
  general = {
    layout = "scrolling",
  },
  -- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/
  dwindle = {
    -- pseudotile = true -- Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = true, -- You probably want this
  },
  -- See https://wiki.hyprland.org/Configuring/Master-Layout/
  master = {
    new_status = "master",
  },
})

-- Toggle pseudotile (keep window as single tile)
-- dwindle
hl.bind("SUPER + ALT + P", hl.dsp.window.pseudo())
