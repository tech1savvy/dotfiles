#!/usr/bin/env bash

# Declare associative array mapping app names to class names
declare -A APP_CLASS
APP_CLASS=(
  [discord]="discord"
  [obsidian]="obsidian"
  [postman]="Postman"
  [librewolf]="librewolf"
  [anki]="anki"
)

APP_NAME="$1"
WORKSPACE_NAME="$APP_NAME"
CLASS_NAME="${APP_CLASS[$APP_NAME]}"
DEBUG="$2"

debug() {
  if [ "$DEBUG" = "debug" ]; then
    echo "[DEBUG] $*"
  fi
}

# --- New Functionality: Directional Special Workspace Toggle ---
if [[ "$APP_NAME" =~ ^(left|right|down|up)$ ]]; then
  # Get the current focused workspace (assumes hyprctl and jq are installed)
  CURRENT_FOCUS_WS=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .activeWorkspace.name')
  debug "Current focused workspace: $CURRENT_FOCUS_WS"

  # Check if the workspace is a normal workspace between 1 and 10
  if [[ "$CURRENT_FOCUS_WS" =~ ^[1-9]$|^10$ ]]; then
    # Map direction to single character
    case "$APP_NAME" in
    left) DIR_CHAR="l" ;;
    right) DIR_CHAR="r" ;;
    up) DIR_CHAR="u" ;;
    down) DIR_CHAR="d" ;;
    esac
    SPECIAL_WS="${CURRENT_FOCUS_WS}${DIR_CHAR}"
    debug "Toggling special workspace special:$SPECIAL_WS"
    hyprctl dispatch togglespecialworkspace "$SPECIAL_WS"
    exit 0
  else
    debug "Focused workspace is not a normal workspace between 1 and 10"
    exit 1
  fi
fi
# --- End of New Functionality ---

if [ -z "$APP_NAME" ] || [ -z "$CLASS_NAME" ]; then
  echo "Usage: $0 <AppName> [debug]"
  echo "Known apps: ${!APP_CLASS[@]}"
  exit 1
fi

debug "Processing: APP_NAME=$APP_NAME, CLASS_NAME=$CLASS_NAME, WORKSPACE_NAME=$WORKSPACE_NAME"

# Check if app is running via window class detection
APP_ADDRESS=$(hyprctl clients -j | jq -r ".[] | select(.class == \"$CLASS_NAME\") | .address" | head -n1)

if [ -z "$APP_ADDRESS" ]; then
  debug "Starting $APP_NAME..."
  "$APP_NAME" --no-sandbox &
  disown
  # Wait for window to appear (max 10 seconds)
  debug "Waiting for window..."
  for _ in {1..100}; do
    sleep 0.1
    APP_ADDRESS=$(hyprctl clients -j | jq -r ".[] | select(.class == \"$CLASS_NAME\") | .address" | head -n1)
    [ -n "$APP_ADDRESS" ] && break
  done
  [ -z "$APP_ADDRESS" ] && debug "WARNING: Window not detected after 10s"
else
  debug "App already running"
fi

debug "Detected address: $APP_ADDRESS"

# Move app to special workspace only if not already there
if [ -n "$APP_ADDRESS" ]; then
  CURRENT_WS=$(hyprctl clients -j | jq -r --arg addr "$APP_ADDRESS" '.[] | select(.address == $addr) | .workspace.name')
  debug "Current workspace: $CURRENT_WS"
  if [ "$CURRENT_WS" != "special:$WORKSPACE_NAME" ]; then
    debug "Moving to special:$WORKSPACE_NAME"
    hyprctl dispatch movetoworkspace "special:$WORKSPACE_NAME,address:$APP_ADDRESS"
  else
    debug "Already on correct workspace"
  fi
fi

# Toggle the special workspace
debug "Toggling workspace special:$WORKSPACE_NAME"
hyprctl dispatch togglespecialworkspace "$WORKSPACE_NAME"
