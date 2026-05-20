{
  imports = [
    # SHELLS & PROMPT
    ./fish.nix
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
    ./tmux
    ./zellij.nix

    # CLI TOOLS
    ./bat.nix
    ./btop.nix
    ./eza.nix
    ./htop.nix
    # ./glance.nix
    ./yazi
    ./zathura

    # DEVELOPMENT
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
    # ./qt.nix

    # HYPRLAND
    ./hyprland
    ./hypridle
    ./hyprlock
    ./hyprpaper
    ./hyprpolkitagent
    ./hyprsunset
    # ./hyprpanel

    # DESKTOP UTILITIES
    ./cliphist
    ./kdeconnect
    ./launchers
    ./mpvpaper.nix
    ./udiskie.nix

    # APPLICATIONS
    ./activitywatch
    ./firefox.nix
    ./gemini.nix
    ./jrnl.nix
    ./keepassxc.nix
    ./qutebrowser
    ./text-expander/espanso.nix
    # ./email-clients/mutt.nix
    # ./element-desktop.nix
    # ./obs-studio
    # ./vesktop.nix
  ];
}
