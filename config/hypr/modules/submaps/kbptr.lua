-- Without Submap
hl.bind("SUPER + G", hl.dsp.exec_cmd("wl-kbptr"))

-- Cursor submap (similar to the Mouse mode in Sway)
hl.define_submap("cursor", function()
  -- Jump cursor to a position
  hl.bind("a", hl.dsp.exec_cmd("hyprctl dispatch submap reset && wl-kbptr && hyprctl dispatch submap cursor"))

  -- Cursor movement
  hl.bind("j", hl.dsp.exec_cmd("wlrctl pointer move 0 10"), { repeating = true })
  hl.bind("k", hl.dsp.exec_cmd("wlrctl pointer move 0 -10"), { repeating = true })
  hl.bind("l", hl.dsp.exec_cmd("wlrctl pointer move 10 0"), { repeating = true })
  hl.bind("h", hl.dsp.exec_cmd("wlrctl pointer move -10 0"), { repeating = true })

  -- Left button
  hl.bind("s", hl.dsp.exec_cmd("wlrctl pointer click left"))
  -- Middle button
  hl.bind("d", hl.dsp.exec_cmd("wlrctl pointer click middle"))
  -- Right button
  hl.bind("f", hl.dsp.exec_cmd("wlrctl pointer click right"))

  -- Scroll up and down
  hl.bind("e", hl.dsp.exec_cmd("wlrctl pointer scroll 10 0"), { repeating = true })
  hl.bind("r", hl.dsp.exec_cmd("wlrctl pointer scroll -10 0"), { repeating = true })
  -- Scroll left and right
  hl.bind("t", hl.dsp.exec_cmd("wlrctl pointer scroll 0 -10"), { repeating = true })
  hl.bind("g", hl.dsp.exec_cmd("wlrctl pointer scroll 0 10"), { repeating = true })

  -- Exit cursor submap
  -- If you do not use cursor timeout or cursor:hide_on_key_press, you can delete its respective calls.
  hl.bind("escape", hl.dsp.exec_cmd("hyprctl keyword cursor:inactive_timeout 3; hyprctl keyword cursor:hide_on_key_press true; hyprctl dispatch submap reset"))
end)

-- Entrypoint
-- If you do not use cursor timeout or cursor:hide_on_key_press, you can delete its respective calls.
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd("hyprctl keyword cursor:inactive_timeout 0; hyprctl keyword cursor:hide_on_key_press false; hyprctl dispatch submap cursor"))
