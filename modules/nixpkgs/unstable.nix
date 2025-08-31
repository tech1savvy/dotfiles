{
  config,
  pkgs,
  ...
}: let
  unstable = import <nixpkgs-unstable> {};
in {
  environment.systemPackages = with pkgs; [
    # stable packages here
    unstable.kiro # from unstable channel
  ];
  # rest of your config...
}
