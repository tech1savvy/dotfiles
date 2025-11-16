#!/usr/bin/env bash

# Everforest colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

services=("kanata-leftUSBKeyboard.service" "kanata-rightUSBKeyboard.service" "kanata-internalKeyboard.service")

echo "Kanata Service Status:"
for svc in "${services[@]}"; do
  if systemctl is-active --quiet "$svc"; then
    status="active"
    color="$GREEN"
  else
    status="inactive"
    color="$RED"
  fi
  printf "  %-35s ${color}%s${NC}\n" "$svc" "$status"
done

