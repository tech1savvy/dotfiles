# Source: https://github.com/JackHack96/EasyEffects-Presets
let
  advancedAutoGain = builtins.fromJSON (builtins.readFile ./presets/advanced-auto-gain.json);
  bassBoosted = builtins.fromJSON (builtins.readFile ./presets/bass-boosted.json);
  bassEnhancingPerfectEqLowLatency = builtins.fromJSON (
    builtins.readFile ./presets/bass-enhancing-perfect-eq-low-latency.json
  );
  boosted = builtins.fromJSON (builtins.readFile ./presets/boosted.json);
  loudnessAutogain = builtins.fromJSON (builtins.readFile ./presets/loudness-autogain.json);
  bassEnhancingPerfectEq = builtins.fromJSON (
    builtins.readFile ./presets/bass-enhancing-perfect-eq.json
  );
  perfectEq = builtins.fromJSON (builtins.readFile ./presets/perfect-eq.json);
in
{
  services.easyeffects = {
    enable = false;
    preset = "";
    extraPresets = {
      "Advanced Auto Gain" = advancedAutoGain;
      "Bass Boosted" = bassBoosted;
      # Requires irs/Razor Surround ((48k Z-Edition)) 2.Stereo +20 bass.irs
      "Bass Enhancing + Perfect EQ" = bassEnhancingPerfectEq;
      # Requires irs/Razor Surround ((48k Z-Edition)) 2.Stereo +20 bass Low Latency.irs
      "Bass Enhancing + Perfect EQ - Low Latency" = bassEnhancingPerfectEqLowLatency;
      "Boosted" = boosted;
      "Loudness+Autogain" = loudnessAutogain;
      "Perfect EQ" = perfectEq;
    };
  };
}
