-- For not specified quick plug and play monitors
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

-- Integrated Laptop Display
hl.monitor({ output = "eDP-1", mode = "preferred", position = "auto", scale = 1.6 })

-- Mirror Laptop Display to HDMI Port
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "auto", scale = 2, mirror = "eDP-1" })
