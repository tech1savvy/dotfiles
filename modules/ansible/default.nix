{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ansible
    # molecule

    ansible-lint
  ];
}
