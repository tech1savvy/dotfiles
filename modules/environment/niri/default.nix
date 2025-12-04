{inputs, system, pkgs, ...}:
let
  inherit (inputs.nfsm.packages.${system}) nfsm nfsm-cli;
  inherit (inputs.niri-scratchpad.packages.${system}) niri-scratchpad;
  # TODO: Install nsticky
in {
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    # default config apps
    alacritty
    fuzzel
    # swaylock

    xwayland-satellite # xwayland support

    nfsm
    nfsm-cli
    # niri-scratchpad
  ];
}
