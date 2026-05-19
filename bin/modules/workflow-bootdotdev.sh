#!/usr/bin/env bash

PROJECT="HTTP-SERVER-IN-GO"
PROJECT_DIR="$HOME/devbook/active/bootdev/http-server-in-go/"
LESSON_URL="https://www.boot.dev/lessons/be93db0d-4c6d-49cf-b56d-ba22392eb160"
NET_HTTP_DOCS="https://pkg.go.dev/net/http@go1.26.2"
SQLC_DOCS="https://docs.sqlc.dev/en/stable/index.html"
POSTGRES_DOCS="https://www.postgresql.org/docs/16/index.html"
JWT_DOCS="https://pkg.go.dev/github.com/golang-jwt/jwt/v5@v5.3.1"

hyprctl dispatch workspace 1

# BROWSER
librewolf --new-window "$LESSON_URL" "$NET_HTTP_DOCS" "$SQLC_DOCS" $POSTGRES_DOCS $JWT_DOCS &
sleep 5

# NEOVIM
kitty --title "NEOVIM: $PROJECT" --directory "$PROJECT_DIR" nvim &
sleep 1

# OPENCODE
kitty --title "OPENCODE: $PROJECT" --directory "$PROJECT_DIR" opencode &
sleep 1
