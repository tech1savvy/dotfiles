{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # essesntial terminal tools
    wget # download files from the web

    fzf # source: https://www.youtube.com/shorts/iUHfq_JN4G8

    # json parser
    jq

    # comman command line tools bundle
    busybox # tree,

    bonk # combines touch and mkdir

    # modern alternatives
    duf # df
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

    cowsay

    tldr # better manpages
    thokr # typing test

    lnav # log file viewer

    tmate # terminal screen-sharing and access
  ];
}
