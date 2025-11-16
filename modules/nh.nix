{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nh

    nix-output-monitor
    nvd

    alejandra # format nix files

    nix-tree # TUI for pkg depencies

    # NOTE: home-manager option availabe
    nix-index
  ];

  environment.sessionVariables = {
    NH_FLAKE = "\${HOME}/dotfiles";
  };
}
