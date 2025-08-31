{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # notes
    obsidian

    # journal

    # tasks
    super-productivity
  ];
}
