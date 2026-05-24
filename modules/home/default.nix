{
  config,
  ...
}:
{
  imports = [
    # SHELLS & PROMPT
#     ./fish.nix
    ./nix-your-shell.nix
    ./shell
    ./zsh
    ./starship.nix
    # ./oh-my-posh

    # SHELL HISTORY & NAVIGATION
    ./atuin.nix
    ./fzf.nix
    ./zoxide

    # TERMINAL & MULTIPLEXERS
    ./kitty.nix
#     ./tmux
    ./zellij.nix

    # CLI TOOLS
    ./bat.nix
    ./btop.nix
    ./eza.nix
    ./nh.nix
#     ./htop.nix
    # ./glance.nix
    ./yazi
    ./zathura

    # DEVELOPMENT
    ./git.nix
    ./kubecolor
    ./lazydocker
    ./lazygit
    ./opencode.nix

    # DESKTOP CONFIGURATION
    ./bin.nix
    ./stylix.nix
    ./xdg.nix
    # ./gtk.nix
    # ./pointer.nix

    # HYPRLAND
    ./hyprland
    ./hypridle
    ./hyprlock
    ./hyprpaper
    ./hyprpolkitagent
    ./hyprsunset
    # ./hyprpanel

    # WAYBAR
    ./waybar

    # DESKTOP UTILITIES
    ./cliphist
#     ./kdeconnect
    ./launchers
#     ./mpvpaper.nix
    ./udiskie.nix

    # APPLICATIONS
#     ./activitywatch
#     ./firefox.nix
#     ./gemini.nix
#     ./jrnl.nix
#     ./keepassxc.nix
#     ./qutebrowser
#     ./text-expander/espanso.nix
    # ./email-clients/mutt.nix
    # ./element-desktop.nix
    ./obs-studio
    ./vesktop.nix
    ./easyeffects
  ];

  home.stateVersion = "24.11"; # Presever after update as fallback if breaking changes

  home.file = {

    ".config/wl-kbptr" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/wl-kbptr";
      recursive = true;
    };

    ".config/nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/nvim";
      recursive = true;
    };

    ".config/kickstart" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/kickstart";
      recursive = true;
    };

    ".config/mouseless" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/mouseless";
      recursive = true;
    };

    ".config/mimeapps.list" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/mimeapps.list";
    };

    ".config/fastfetch" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/fastfetch";
    };
  };

  home.shell.enableBashIntegration = true;
  home.shell.enableNushellIntegration = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
