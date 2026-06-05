-- DISCORD
hl.window_rule({ match = { class = "^(discord)$" }, workspace = "special:discord" })

-- OBS Studio
hl.window_rule({ match = { class = "^(com.obsproject.Studio)$" }, workspace = "special:obs" })

-- OBSIDIAN
hl.window_rule({ match = { class = "^(obsidian)$" }, workspace = "special:obsidian" })

-- ANKI
hl.window_rule({ match = { class = "^(anki)$" }, workspace = "special:anki" })

-- MOONLIGHT
hl.window_rule({ match = { class = "^(com.moonlight_stream.Moonlight)$" }, workspace = "special:moonlight" })

-- QUTEBROWSER
hl.window_rule({ match = { class = "^(org.qutebrowser.qutebrowser)$" }, workspace = "special:qutebrowser" })

-- SPOTIFY
hl.window_rule({ match = { class = "^(spotify)$" }, workspace = "special:spotify" })

-- WHATSAPP
hl.window_rule({
  match = { class = "^(chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default)$" },
  workspace =
  "special:whatsapp"
})
