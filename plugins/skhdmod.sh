#!/usr/bin/env sh

source "$HOME/.config/sketchybar/scripts/colors.sh"

case $VAR in
  MOTION)
    LABEL="[K]"
    BGCOLOR=$MOTION
    ;;
  MISC)
    LABEL="[L]"
    BGCOLOR=$MISC
    ;;
  FLOAT)
    LABEL="[;]"
    BGCOLOR=$FLOAT
    ;;
  *)
    BGCOLOR=$NORMAL
    ;;
esac

update() {
  sketchybar --set $NAME icon="$LABEL" icon.color=$BGCOLOR
}

sketchybar --set $NAME icon="$LABEL" icon.color=$BGCOLOR
