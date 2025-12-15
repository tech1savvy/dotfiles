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

    # Installing LSP and others throught nixpkgs
    cbfmt
    marksman
    icu.dev # marksman dep

    nil # nix lsp
    nixpkgs-fmt # nix formatter
    # ansible-language-server # ansible lsp # ansible-language-server was removed, because it was unmaintained in nixpkgs.

    elinks # depedency for emmanueltouzery/apidocs.nvim

    ghostscript # to preview pdfs
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono # icon support
    # noto-fonts-emoji # emoji support #  'noto-fonts-emoji' has been renamed to/replaced by 'noto-fonts-color-emoji'
    noto-fonts-color-emoji
  ];

  # For Mason managed binaries
  programs.nix-ld.enable = true;
}
