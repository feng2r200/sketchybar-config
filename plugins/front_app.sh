#!/usr/bin/env sh

update() {
  sketchybar -m --set $NAME label="$INFO"
}

WINDOW_APP=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

sketchybar -m --set $NAME label="$WINDOW_APP:$WINDOW_TITLE"
