{ pkgs, ... }:
{
  programs.idescriptor = {
    enable = true;
    users = [ "tech1savvy" ];
  };
}
