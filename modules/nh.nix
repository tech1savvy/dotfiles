{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nh

    nix-output-monitor
    nvd

    alejandra # format nix files
  ];

  environment.sessionVariables = {
    FLAKE = "\${HOME}/dotfiles";
  };
}
