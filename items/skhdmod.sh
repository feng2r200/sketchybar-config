#!/usr/bin/env sh

yabai=(
    icon.width=0
    label.width=0
    script="$PLUGIN_DIR/yabai.sh"
)

skhd_mod=(
    script="$PLUGIN_DIR/skhdmod.sh"
    icon.font="$FONT:Bold:$LABEL_SIZE"
    icon.padding_left=10
    icon.padding_right=10
    icon.drawing=on
    background.padding_left=5
    background.padding_right=5
    background.color=0x44ffffff
    background.corner_radius=5
    background.y_offset=-1
    background.height=12
    background.drawing=on
    label.drawing=off
    updates=on
)

sys_yabai=(
    script="$PLUGIN_DIR/yabai.sh"
    icon.font="$FONT:Bold:$ICON_SIZE"
    label.drawing=off
    icon.padding_left=2
    icon.padding_right=2
    icon.position=center
    icon.width=30
    icon=$YABAI_GRID
    icon.color=$WHITE
    updates=on
)

sketchybar  --add event           skhd_mod                            \
            --add item            skhd.mod left                       \
            --set skhd.mod        "${skhd_mod[@]}"                    \
            --subscribe skhd.mod  skhd_mod                            \
            --add       event        window_focus                     \
            --add       item         system.yabai left                \
            --set       system.yabai "${sys_yabai[@]}"                \
            --subscribe system.yabai  space_change                    \
                                      display_change                  \
                                      window_focus                    \
                                      windows_on_spaces               \
                                      mouse.clicked

