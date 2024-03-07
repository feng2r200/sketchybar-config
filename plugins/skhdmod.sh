#!/usr/bin/env sh

source "$HOME/.config/sketchybar/scripts/colors.sh"

case $VAR in
  SKHD)
    LABEL="[K]"
    BGCOLOR=$DARK_GREEN
    ;;
  MOD1)
    LABEL="[K1]"
    BGCOLOR=$MAGENTA
    ;;
  MOD2)
    LABEL="[K2]"
    BGCOLOR=$DARK_YELLOW
    ;;
  *)
    LABEL=""
    BGCOLOR=$NORMAL
    ;;
esac

update() {
  sketchybar --set $NAME icon="$LABEL" icon.color=$BGCOLOR
}

sketchybar --set $NAME icon="$LABEL" icon.color=$BGCOLOR
