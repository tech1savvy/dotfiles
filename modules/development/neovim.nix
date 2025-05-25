{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    neovim
    # repo:kickstart.nvim stated depencies
    git
    gnumake # make
    unzip
    gcc

    ripgrep
    fd # fd-find

    wl-clipboard # for wayland
  ];

  fonts.packages = with pkgs; [
    nerdfonts # icon support
    noto-fonts-emoji # emoji support
  ];
}
