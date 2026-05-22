{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    go
  ];

  # environment.sessionVariables = {
  # FIX: Path not updating, currently using home.sessionVariables
  # PATH = [ "$HOME/go/bin" ];
  # };
}
