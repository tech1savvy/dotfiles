{ lib, config, ... }:
{
  imports = [
    ./file.nix
    ./scripts
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
    #     ./htop.nix
    # ./glance.nix
    ./yazi
    ./zathura

    # DEVELOPMENT
    ./git.nix
    ./gh.nix
    ./kubecolor
    ./lazydocker
    ./lazygit
    ./opencode.nix

    # DESKTOP CONFIGURATION
    ./bin.nix
    ./stylix.nix
    ./xdg.nix
    ./mime
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
    ./satty.nix
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
    ./zen
    ./blanket.nix
  ];

  options.nixpkgs.allowedUnfreePackages = lib.mkOption {
    type = lib.types.listOf lib.types.str;
    default = [ ];
    description = "List of unfree packages to allow.";
  };

  config = {
    home.stateVersion = "24.11"; # Presever after update as fallback if breaking changes

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) config.nixpkgs.allowedUnfreePackages;
  };
}
