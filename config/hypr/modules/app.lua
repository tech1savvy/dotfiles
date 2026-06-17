-- DISCORD
hl.window_rule({ match = { class = "^(discord)$" }, workspace = "name:discord" })

-- OBS Studio
hl.window_rule({ match = { class = "^(com.obsproject.Studio)$" }, workspace = "name:obs" })

-- OBSIDIAN
hl.window_rule({ match = { class = "^(obsidian)$" }, workspace = "name:obsidian" })

-- ANKI
hl.window_rule({ match = { class = "^(anki)$" }, workspace = "name:anki" })

-- MOONLIGHT
hl.window_rule({ match = { class = "^(com.moonlight_stream.Moonlight)$" }, workspace = "name:moonlight" })

-- QUTEBROWSER
hl.window_rule({ match = { class = "^(org.qutebrowser.qutebrowser)$" }, workspace = "name:qutebrowser" })

-- SPOTIFY
hl.window_rule({ match = { class = "^(Spotify)$" }, workspace = "name:spotify" })

-- THUNDERBIRD
hl.window_rule({ match = { class = "^(thunderbird)$" }, workspace = "name:thunderbird" })

-- WHATSAPP
hl.window_rule({
  match = { class = "^(chrome-hnpfjngllnobngcgfapefoaidbinmjnm-Default)$" },
  workspace =
  "name:whatsapp"
})
