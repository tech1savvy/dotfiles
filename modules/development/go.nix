{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    go
  ];

  environment.sessionVariables = {
    # FIX: Path not updating, currently using bashrc
    PATH = [ "$HOME/go/bin" ];
  };
}
