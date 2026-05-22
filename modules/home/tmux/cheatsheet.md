# Tmux Cheatsheet

## Key Commands

Start a new session

```sh
tmux new -s NewSession
```

Exit session

```sh
tmux detach
```

List sessions

```sh
tmux ls
```

Go back into session

```sh
tmux attach -t NewSession
```

Show all available options

```sh
tmux show-options -g
```

Show all available shortcuts

```sh
tmux list-keys
```

Show all available commands

```sh
tmux list-commands
```

Start fresh

```sh
tmux kill-server && rm -rf /tmp/tmux-*
```

Enable plugins

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Essential Shortcuts

- Prefix: `CTRL + <Space>`
- Create new tmux window: `Prefix + c`
- Navigate to window: `Prefix + number`
- Cycle through window: `Prefix + n/p`
- See all windows: `Prefix + w`
- Rename window: `Prefix + ,`
- Rename session: `Prefix + $`
- Explore sessions: `Prefix + s`
- Save sessions: `Prefix + CTRL + s`
- Detach: `Prefix + d`
- Restore session: `Prefix + CTRL + r`
- Install plugins: `Prefix + I`

## Useful Snippets

Add this to you `.zshrc` to always work in a Tmux session:

```sh
# Always work in a tmux session if Tmux is installed
if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t default || tmux new -s default; exit
  fi
fi
```
