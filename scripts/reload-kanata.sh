#!/usr/bin/env bash
sudo -v

services=("kanata-leftUSBKeyboard.service" "kanata-rightUSBKeyboard.service" "kanata-internalKeyboard.service")

for svc in "${services[@]}"; do
  echo "$svc"
  if systemctl is-active "$svc"; then
    echo "restarting"
    sudo systemctl restart "$svc"
  else
    echo "starting"
    sudo systemctl start "$svc"
  fi
done
