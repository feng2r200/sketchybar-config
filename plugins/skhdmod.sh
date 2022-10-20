#!/usr/bin/env sh

source "$HOME/.config/sketchybar/scripts/colors.sh"

case $VAR in
  MOTION)
    BGCOLOR=$MOTION
    ;;
  MISC)
    BGCOLOR=$MISC
    ;;
  FLOAT)
    BGCOLOR=$FLOAT
    ;;
  *)
    BGCOLOR=$NORMAL
    ;;
esac

update() {
  sketchybar --set $NAME background.color=$BGCOLOR
}

sketchybar --set $NAME background.color=$BGCOLOR
