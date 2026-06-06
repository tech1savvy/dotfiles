-- Window controls
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + ALT + E", hl.dsp.exit())
hl.bind("SUPER + ALT + V", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind("SUPER + ALT + J", hl.dsp.layout("togglesplit")) -- dwindle
hl.bind("SUPER + P", hl.dsp.window.pin())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
