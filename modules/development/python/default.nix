{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    python313
    # pkg managers
    python313Packages.pip
    python313Packages.pipx
    python313Packages.uv
    # common libraries/pkgs
    python313Packages.tkinter
  ];
}
