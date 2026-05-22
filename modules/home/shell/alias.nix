{
  home.shellAliases = {
    vi = "nvim";

    # Directory & Navigation
    cd = "z";
    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";

    # Change TERM to xterm for SSH Connections
    ssh = "export TERM=xterm && ssh";

    # btop utf-8 locale
    btop = "btop --force-utf";
    ff = "fzf";

    # TUIs
    lg = "lazygit";
    ld = "lazydocker";

    # List Directory contents
    l = "eza -lah --icons --git";
    ls = "eza";
    tree = "eza -h --tree --icons --git --git-ignore";

    # Utilities
    # Bat
    cat = "bat";
    man = "batman";
    diff = "batdiff";
    grep = "rg";
    top = "htop";
    curl = "curlie";
    open = "xdg-open";

    j = "just";
    k = "kubectl";

    # node
    # npm = "pnpm";
    # npx = "pnpx";

    tmux = "tmux -u";

    # Safety nets
    cp = "cp -i"; # ask for confirmation
    mv = "mv -i";
    rmt = "gio trash";
    rmp = "rm -i"; # send to trash

    # NixOS System Management
    ns = "nh os switch";
    nt = "nh os test";
    nb = "nh os build";
    nc = "nh clean all";

    s = "nh search";

    ytd = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --no-playlist";
    ytds = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en --no-playlist";
    ytdp = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters";
    ytdps = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en";
    ytmusic = "yt-dlp --no-playlist";

    # Shortcuts
    iv = "vimiv";
    br = "brightnessctl s ";
    mps = "mpv --input-ipc-server=/tmp/mpvsocket";
    cpwd = "pwd | wl-copy";
    leetcode = "nvim leetcode.nvim";
    gemi = "gemini --model gemini-2.5-flash";
    mycli = "sudo mycli -u root";
    waka = "wakatime-cli --today";
    tasker = "taskwarrior-tui";
    wolf = "librewolf";
    office = "libreoffice";

    # Python
    py = "python";
    dj = "django-admin";
    pym = "python manage.py";
    venv = "python -m venv";
    vact = "source .venv/bin/activate";
    dact = "deactivate";
  };
}
