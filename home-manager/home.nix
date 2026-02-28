{
  config,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./modules
  ];

  home.username = "tech1savvy";
  home.homeDirectory = "/home/tech1savvy";

  home.stateVersion = "24.11"; # Presever after update as fallback if breaking changes

  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';

    ".config/waybar" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/config/waybar";
      recursive = true;
    };

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

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/tech1savvy/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # Default editors
    EDITOR = "nvim";
    VISUAL = "nvim";

    # Tell pnpm where to find and store global
    PNPM_HOME = "$HOME/.local/share/pnpm";
  };

  home.sessionPath = [
    # pipx pkgs
    "$HOME/.local/bin"
    # cargo pkgs
    "$HOME/.cargo/bin"
    # custom scripts
    "$HOME/bin"
    # go pkgs
    "$HOME/go/bin"
    # mason pkgs
    "$HOME/.local/share/nvim/mason/bin"
    # pnpm pkgs
    "$HOME/.local/share/pnpm"
  ];

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

    # node
    npm = "pnpm";
    npx = "pnpx";

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

    ytd = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --no-playlist";
    ytds = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en --no-playlist";
    ytdp = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters";
    ytdps = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en";

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
    psql = "sudo -u postgres psql";
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

  home.shell.enableBashIntegration = true;
  home.shell.enableNushellIntegration = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
