-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+"),
  { repeating = true, locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%-"),
  { repeating = true, locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 5%+"), { repeating = true, locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"), { repeating = true, locked = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Global MPV Controls
hl.bind("SUPER + ALT + right", hl.dsp.exec_cmd("echo 'seek 4 relative' | socat - /tmp/mpvsocket"), { locked = true })
hl.bind("SUPER + ALT + left", hl.dsp.exec_cmd("echo 'seek -4 relative' | socat - /tmp/mpvsocket"), { locked = true })
hl.bind("SUPER + ALT + Space",
  hl.dsp.exec_cmd("echo '{ \"command\": [\"cycle\", \"pause\"] }' | socat - /tmp/mpvsocket && playerctl play-pause"),
  { locked = true })

-- # for mpvc: https://www.perplexity.ai/search/pause-tutorail-videso-hotfix-b-rAE82dBHQoahy_McY_B6RQ#8
