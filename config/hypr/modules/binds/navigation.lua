-- New Named Workspace
hl.bind("SUPER + R", hl.dsp.exec_cmd("hypr-rename-workspace"))

-- Numbered Workspace switching
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Adjacent Workspace switching
hl.bind("SUPER + left", hl.dsp.focus({ workspace = "prev" }))
hl.bind("SUPER + down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + right", hl.dsp.focus({ workspace = "next" }))

hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ workspace = "prev" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ workspace = "next" }))

hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { mouse = true })
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { mouse = true })

-- Focus
hl.bind("SUPER + semicolon", hl.dsp.focus({ last = true }))        -- prev window
hl.bind("SUPER + slash", hl.dsp.focus({ workspace = "previous" })) -- prev workspaces

-- Move focus between tiles with vim keys
hl.bind("SUPER + h", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "r" }))

-- Swap windows (move tiles) in tiling mode
hl.bind("SUPER + SHIFT + h", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + l", hl.dsp.window.move({ direction = "r" }))

-- Scrolling layout - column navigation
-- move
hl.bind("SUPER + PERIOD", hl.dsp.layout("move +col"))
hl.bind("SUPER + COMMA", hl.dsp.layout("move -col"))
-- swap
hl.bind("SUPER + SHIFT + PERIOD", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + COMMA", hl.dsp.layout("swapcol l"))
-- resize
hl.bind("SUPER + SHIFT + EQUAL", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + MINUS", hl.dsp.layout("colresize -conf"))
-- col fullscreen
hl.bind("SUPER + ALT + F", hl.dsp.layout("colresize 1"))
hl.bind("SUPER + ALT+ + SHIFT + F", hl.dsp.layout("colresize 0.5"))

-- Move/resize windows with SUPER + LMB/RMB and dragging
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
