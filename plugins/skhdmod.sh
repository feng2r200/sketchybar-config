#!/usr/bin/env sh

BGCOLOR=$VAR

if [[ $BGCOLOR == '' ]]; then
  BGCOLOR=0x44ffffff
fi

update() {
  sketchybar --set $NAME background.color=$BGCOLOR
}

sketchybar --set $NAME background.color=$BGCOLOR
