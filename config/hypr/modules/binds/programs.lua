-- See https://wiki.hyprland.org/Configuring/Keywords/

-- Programs
local terminal = "kitty"
local fileManager = "thunar"
local browser = "zen-beta"
local menu = "rofi"

-- APPLICATIONS
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + W", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + P",
  hl.dsp.exec_cmd(
  "notify-send 'Connecting to Phone' && scrcpy --render-driver=opengl --turn-screen-off --stay-awake --no-audio"))
hl.bind("SUPER + SHIFT + P",
  hl.dsp.exec_cmd(
  "notify-send 'Connecting to Phone with Screen-On' && scrcpy --render-driver=opengl --stay-awake --no-audio"))

-- MENU
hl.bind("SUPER + Space", hl.dsp.exec_cmd(menu .. " -show combi"))
hl.bind("SUPER + CTRL + PERIOD", hl.dsp.exec_cmd(menu .. " -show emoji"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(menu .. " -show cliphist"))

-- UTILIS
-- hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
-- hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m window --clipboard-only"))
hl.bind("SUPER + CTRL + P", hl.dsp.exec_cmd("screenshot"))
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd("hyprlock"))
