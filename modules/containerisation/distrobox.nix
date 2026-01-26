{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    distrobox
    boxbuddy # gui for distrobox
    distrobox-tui
  ];
}
