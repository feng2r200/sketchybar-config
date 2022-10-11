#!/usr/bin/env sh

sketchybar --add item clock right                             \
           --set clock  update_freq=10                        \
                        icon=""                              \
                        icon.padding_right=2                  \
                        icon.color=0xff55d0f0                 \
                        icon.y_offset=2                       \
                        label.y_offset=2                      \
                        label.font="$FONT:Bold:10.8"          \
                        label.color=0xff55d0f0                \
                        label.padding_right=8                 \
                        background.color=0xff55f0f0           \
                        background.height=2                   \
                        background.padding_right=10           \
                        background.y_offset=-9                \
                        script="$PLUGIN_DIR/clock.sh"         \
                        icon.padding_left=0                   \
                        label.padding_right=1

