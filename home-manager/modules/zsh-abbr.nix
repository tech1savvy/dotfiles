{ lib, ... }:
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "zsh-abbr" ];
  programs.zsh.zsh-abbr = {
    enable = true;

    globalAbbreviations = {
    };
    abbreviations = {
      sw = "nh os switch";
      upd = "nh os switch --update";
      hms = "nh home switch";

      vi = "nvim";
      se = "sudoedit";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";

      cmd = "command";
      # Directory & Navigation
      cd = "z";
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      # Change TERM to xterm for SSH Connections
      ssh = "export TERM=xterm && ssh";

      iv = "vimiv";

      # btop utf-8 locale
      btop = "btop --force-utf";
      ff = "fzf";
      about = "fastfetch";
      nd = "nix develop";

      # TUIs
      lg = "lazygit";
      ld = "lazydocker";
      blue = "bluetui";

      mps = "mpv --input-ipc-server=/tmp/mpvsocket";

      # List Directory contents
      l = "eza -lah --icons --git";
      ls = "eza";
      tree = "eza -h --tree --icons --git --git-ignore";

      # Utilities
      # Bat
      cat = "bat";
      man = "batman";
      diff = "batdiff";
      grep = "batgrep";
      top = "htop";
      curl = "curlie";
      open = "xdg-open";

      # Shell
      # s="sudo"
      c = "clear";
      h = "history | sed 's/^[ ]*[0-9]\+[ ]*//' | fzf | wl-copy";
      cpwd = "pwd | wl-copy"; # copy dir path
      # j="just" # cmd (task,scripts) runner

      # shortcuts
      br = "source ~/.bashrc";
      be = "nvim ~/.bashrc";
      leetcode = "nvim leetcode.nvim";
      touch = "bonk";
      ytd = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --no-playlist";
      ytds = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en --no-playlist";
      ytdp = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters";
      ytdps = "yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en";

      gemi = "gemini --model gemini-2.5-flash";
      mycli = "sudo mycli -u root";
      waka = "wakatime-cli --today";
      tasker = "taskwarrior-tui";
      psql = "sudo -u postgres psql";
      wolf = "librewolf";
      office = "libreoffice";

      # node
      npm = "pnpm";
      npx = "pnpx";

      tmux = "tmux -u";

      # django
      py = "python";
      dj = "django-admin";
      pym = "python manage.py";
      venv = "python -m venv";
      vact = "source .venv/bin/activate";
      dact = "deactivate";
      # Safety nets
      cp = "cp -i"; # ask for confirmation
      mv = "mv -i";
      rmt = "gio trash";
      rmp = "rm -i"; # send to trash

      # NixOS System Management
      ns = "nh os switch";
      nt = "nh os test";
      nb = "nh os build";
      nc = "nh clean";
      nca = "nh clean all";

      nixpkg = "nix-shell -p";
      set-nix-unfree = "export NIXPKGS_ALLOW_UNFREE=1";
      nixpkg-unfree = "export NIXPKGS_ALLOW_UNFREE=1 && nix-shell -p";

      # Hardware
      bu = "brightnessctl s 1%+";
      bd = "brightnessctl s 1%-";
    };
  };
}
