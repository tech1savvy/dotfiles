{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # -- Paint Tools --
    # pinta
    gimp

    # -- Simple Editors --
    kdePackages.gwenview
  ];
}
