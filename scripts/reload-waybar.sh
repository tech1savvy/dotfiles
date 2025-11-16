#!/usr/bin/env bash

if pidof waybar >/dev/null; then
  pkill waybar && hyprctl dispatch exec waybar
else
  waybar &>/dev/null &
fi
