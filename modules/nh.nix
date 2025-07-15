{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nh

    nix-output-monitor
    nvd

    alejandra # format nix files
  ];

  environment.sessionVariables = {
    NH_FLAKE = "\${HOME}/dotfiles";
  };
}
