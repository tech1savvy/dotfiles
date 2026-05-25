c:
builtins.map (f: if builtins.isFunction f then f c else f) [
  (import ./workspaces.nix)
  (import ./submap.nix)
  (import ./tomat.nix)
  (import ./cava.nix)
  (import ./mpris.nix)
  (import ./wakatime.nix)
  (import ./pulseaudio.nix)
  (import ./microphone.nix)
  (import ./network.nix)
  (import ./network-speed.nix)
  (import ./cpu.nix)
  (import ./memory.nix)
  (import ./battery.nix)
  (import ./clock.nix)
  (import ./tray.nix)
  (import ./power.nix)
]
