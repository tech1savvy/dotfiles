PS1="\[\e[34m\]\W\[\e[0m\]\[\e[31m\]\$\[\e[0m\]"

# enable vim mode
set -o vi

HISTSIZE=1000     # history in memory
HISTFILESIZE=1000 # history stored in file

shopt -s histappend # Ensure Bash appends history to the history file instead of overwriting it on shell exit, preserving history across sessions

# default editor
export EDITOR="nvim"
export VISUAL="nvim"

# Point env vars to new global node npm-packages dir
export PATH=$PATH:$HOME/.npm-packages/bin
export NODE_PATH=$HOME/.npm-packages/lib/node_modules

# Change TERM to xterm for SSH Connections
alias ssh="export TERM=xterm && ssh"

# Yazi: q: quit and open the selected dir, Q: quite without changing the pwd
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

alias v='nvim'
alias knv='NVIM_APPNAME=kickstart.nvim nvim'

dp() {
  dolphin .
}

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# btop utf-8 locale
alias btop="btop --force-utf"
alias ff="fzf"
alias about="fastfetch"
alias nd="nix develop"
# Lazy
alias lg="lazygit"
alias ld="lazydocker"

alias mps="mpv --input-ipc-server=/tmp/mpvsocket"
alias d='z'
alias di='zi'
alias cd='z'

# List Directory contents
alias l="eza -lah --icons --git"
alias ls="eza"
alias tree="eza -lh --tree --icons --git --git-ignore"

# Utilities
alias cat="bat"
alias man="batman"
alias ds="duf / /boot"
alias curl="curlie"

# Shell
alias s="sudo"
alias c="clear"
alias h="history | sed 's/^[ ]*[0-9]\+[ ]*//' | fzf | wl-copy"
# mk() { # make dir & cd into it
#   mkdir -p $1 && cd $1
# }
alias cpwd="pwd | wl-copy" # copy dir path
cfp() {                    # copy file path
  readlink -f $1 | wl-copy |
    readlink -f $1
}
alias j="just" # cmd (task,scripts) runner

# shortcuts
alias gc="npx -y https://github.com/google-gemini/gemini-cli"
alias br="source ~/.bashrc"
alias be="nvim ~/.bashrc"
alias leetcode="nvim leetcode.nvim"
alias mk="bonk"
alias ff="fzf"
alias ytd="yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --no-playlist"
alias ytds="yt-dlp -f 'bv*[height=1080]+ba' -o '%(title)s - %(uploader)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en --no-playlist"
alias ytdp="yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters"
alias ytdps="yt-dlp -f 'bv*[height=1080]+ba' -o '%(playlist_index)03d - %(title)s - %(playlist_title)s.%(ext)s' --embed-chapters --embed-subs --write-auto-sub --write-sub --sub-lang en"

alias kt="sudo /home/tech1savvy/dotfiles/scripts/kanata.sh"

alias mycli="sudo mycli -u root"

# github
ghrc() {
  gh repo create "$1" --source=. --public --remote=origin --push
}

# node
alias nrd="npm run dev"

alias tm="tmux"

# django
alias py="python"
alias dj="django-admin"
alias pym="python manage.py"
alias venv="python -m venv"
alias vact="source .venv/bin/activate"
alias dact="deactivate"
# Safety nets
alias cp="cp -i" # ask for confirmation
alias mv="mv -i"
alias rm="rm -i"

alias rmt="gio trash" # send to trash

# NixOS System Management
alias ns="nh os switch"
alias nt="nh os test"
alias nb="nh os build"
alias nc="nh clean"
alias nca="nh clean all"

alias nsp="nix-shell -p"
alias nspf="export NIXPKGS_ALLOW_UNFREE=1 && nix-shell -p"

ntd() {
  nix-tree --derivation "nixpkgs#$1"
}

# Hardware
alias bu="brightnessctl s 1%+"
alias bd="brightnessctl s 1%-"

eval "$(thefuck --alias)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"
