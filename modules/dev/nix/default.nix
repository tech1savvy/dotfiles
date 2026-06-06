{ pkgs, ... }:
{
  imports = [
    ./nix-index.nix
  ];

  environment.systemPackages = with pkgs; [
    nvd # nix pkg version diff

    # alejandra # format nix files
    nixfmt

    # nix-tree # TUI for pkg depencies

  ];

  environment.sessionVariables = {
    NH_FLAKE = "\${HOME}/dotfiles";
  };
}
