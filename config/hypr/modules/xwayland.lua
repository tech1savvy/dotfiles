-- XWAYLAND: pixelated windows fix
-- unscale XWayland
hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})
-- set toolkit-specific scale (match monitor scaling in "modules.monitor")
hl.env("GDK_SCALE", "2")
hl.env("XCURSOR_SIZE", "32")
