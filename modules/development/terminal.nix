{pkgs, ...}: {
  environment.systemPackages = with pkgs; [

    kitty # terminal emulator

    bat # quick file reader
    lazygit # source: https://www.youtube.com/shorts/gim-riPYhVA
    fzf # source: https://www.youtube.com/shorts/iUHfq_JN4G8

    tmux # terminal multiplier

    # terminal-vim based file manager
    yazi
  ];
}
