#!/usr/bin/env bash

if pidof waybar >/dev/null; then
  pkill -x .waybar-wrapped && hyprctl dispatch exec waybar # using -x in order to not kill waybar_timer on reload
else
  waybar &>/dev/null &
fi
