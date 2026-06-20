{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # FILE MANAGEMENT
    fff # no tui framework file browser
    # bonk # combines touch and mkdir

    # FUN & ASCII
    # asciiquarium
    # cbonsai
    # cmatrix
    # cowsay
    # figlet # ascii print text to terminal
    # pipes

    # NETWORKING
    curlie # curl
    tmate # terminal screen-sharing and access
    wget # download files from the web

    # SYSTEM UTILITIES
    busybox # common command line tools bundle
    duf # df
    fastfetch # neofetch
    fzf # source: https://www.youtube.com/shorts/iUHfq_JN4G8
    tldr # better manpages
    # lnav # log file viewer
    # thokr # typing test

    # VIEWERS
    # glow # md file

    # bluetui
    # impala
  ];
}
