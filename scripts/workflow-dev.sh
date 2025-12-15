#!/usr/bin/env bash

PROJECT="KEY-SENSEI"
PROJECT_DIR="$HOME/devbook/active/key-sensei"
URL="localhost:5173"

hyprctl dispatch workspace 1

# Open gemini-cli in project dir
kitty --title "GEMINI-CLI: $PROJECT" --directory "$PROJECT_DIR/client" gemini &

sleep 1

# Open nvim in project dir
kitty --title "NEOVIM: $PROJECT" --directory "$PROJECT_DIR/client" nvim &

sleep 1

# Open project dev url
firefox --new-window "$URL" &

sleep 1

# Open project dev url
kitty --title "CLIENT-TERMINAL: $PROJECT" --directory "$PROJECT_DIR/client" npm run dev &
