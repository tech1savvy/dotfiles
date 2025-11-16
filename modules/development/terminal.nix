{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # essesntial terminal tools
    wget # download files from the web


    bat # quick file reader
    lazygit # source: https://www.youtube.com/shorts/gim-riPYhVA
    fzf # source: https://www.youtube.com/shorts/iUHfq_JN4G8

    tmux # terminal multiplier

    # terminal-vim based file manager
    yazi

    # json parser
    jq

    # comman command line tools bundle
    busybox # tree,

    zoxide # smart cd tool


    bonk # combines touch and mkdir

    # modern alternatives
    duf # df
    eza # ls
    bat-extras.batman
    fastfetch # neofetch
    curlie # curl

    glow # md file

    bluetui
    impala

    # ascii art
    cmatrix
    cbonsai
    asciiquarium
    pipes

    tldr # better manpages
    thokr # typing test 

    lnav # log file viewer

  ];
}
