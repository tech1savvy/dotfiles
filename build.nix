{ ... }: let
  defaultCache = {
    url = "https://cache.nixos.org";
    key = "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=";
  };
  extraCaches = [
    # NIX-COMMUNITY: home-manager, stylix etc
    { url = "https://nix-community.cachix.org"; key = "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="; }
    # GARNIX: CI builds
    { url = "https://cache.garnix.io"; key = "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="; }
    # HYPRLAND
    { url = "https://hyprland.cachix.org"; key = "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="; }
    # NUMTIDE: llm-agents
    { url = "https://cache.numtide.com"; key = "niks3.numtide.com-1:DTx8wZduET09hRmMtKdQDxNNthLQETkc/yaX7M4qK0g="; }
    # PROXMOX: llm-agents
    { url = "https://cache.saumon.network/proxmox-nixos"; key = "proxmox-nixos:D9RYSWpQQC/msZUWphOY2I5RLH5Dd6yQcaHIuug7dWM="; }
    # MICROVM
    { url = "https://microvm.cachix.org"; key = "microvm.cachix.org-1:oXnBc6hRE3eX5rSYdRyMYXnfzcCxC7yKPTbZXALsqys="; }
  ];
in {
  nix.settings = {
    download-buffer-size = 524288000;
    http-connections = 128;
    max-substitution-jobs = 128;
    substituters = [ defaultCache.url ];
    trusted-public-keys = [ defaultCache.key ];
    trusted-users = [ "tech1savvy" ];
    extra-substituters = map (c: c.url) extraCaches;
    extra-trusted-public-keys = map (c: c.key) extraCaches;
  };
}
