#!/usr/bin/env bash

PROJECT="FLASHCARDS"
PROJECT_DIR="$HOME/notes/cards/"

hyprctl dispatch workspace 2

# Open gemini-cli in project dir
kitty --title "GEMINI-CLI: $PROJECT" --directory "$PROJECT_DIR" gemini &

sleep 1

# Open nvim in project dir
kitty --title "NEOVIM: $PROJECT" --directory "$PROJECT_DIR" nvim &
