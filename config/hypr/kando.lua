hl.window_rule({ match = { class = "kando" }, no_blur = true })
hl.window_rule({ match = { class = "kando" }, opaque = true })
hl.window_rule({ match = { class = "kando" }, size = { "100%", "100%" } })
hl.window_rule({ match = { class = "kando" }, border_size = 0 })
hl.window_rule({ match = { class = "kando" }, no_anim = true })
hl.window_rule({ match = { class = "kando" }, float = true })
hl.window_rule({ match = { class = "kando" }, pin = true })

hl.bind("CTRL + Space", hl.dsp.global("menu.kando.Kando:example-menu"))

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
