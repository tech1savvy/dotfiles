{ pkgs, ... }:
{
  imports = [
    # ./pygame.nix
  ];
  environment.systemPackages = with pkgs; [
    # common libraries/pkgs
    (python313.withPackages (
      ps: with ps; [
        # tkinter
        # torchvision
      ]
    ))
    # pkg managers
    python313Packages.pip
    python313Packages.pipx
    python313Packages.uv
  ];
}
