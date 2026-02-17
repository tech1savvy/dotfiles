{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    android-tools # adb
    universal-android-debloater # uad-ng
  ];
}
