-- See https://wiki.hyprland.org/Configuring/Environment-variables/

hl.env("XCURSOR_THEME", "Breeze")
hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_THEME", "Breeze")
hl.env("HYPRCURSOR_SIZE", 24)

-- Hint Electron Apps to use Wayland
hl.env("NIXOS_OZONE_WL", "1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
