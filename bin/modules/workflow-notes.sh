#!/usr/bin/env bash

PROJECT="FLASHCARDS"
PROJECT_DIR="$HOME/notes/cards/"

hyprctl dispatch workspace 21

# Open gemini-cli in project dir
kitty -o confirm_os_window_close=1 --title "GEMINI-CLI: $PROJECT" --directory "$PROJECT_DIR" gemini &

sleep 1

hyprctl dispatch workspace 21

# Open nvim in project dir
kitty -o confirm_os_window_close=1 --title "NEOVIM: $PROJECT" --directory "$PROJECT_DIR" nvim &
