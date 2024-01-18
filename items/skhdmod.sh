#!/usr/bin/env sh

sketchybar --add event skhd_mod
sketchybar --add event window_focus

skhd_mod=(
    script="$PLUGIN_DIR/skhdmod.sh"
    icon.padding_left=4
    icon.padding_right=2
    icon.position=center
)

yabai=(
    script="$PLUGIN_DIR/yabai.sh"
    icon=$YABAI_GRID
    icon.color=$WHITE
    icon.padding_left=2
    icon.padding_right=2
    icon.position=center
)

sketchybar --add item           system.yabai right     \
           --set system.yabai   "${yabai[@]}"          \
           --add item           skhd.mod right         \
           --set skhd.mod       "${skhd_mod[@]}"       \
           --subscribe skhd.mod  skhd_mod              \
           --subscribe system.yabai  space_change      \
                                     display_change    \
                                     window_focus      \
                                     windows_on_spaces \
                                     mouse.clicked

