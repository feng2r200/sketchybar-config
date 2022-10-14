#!/usr/bin/env sh

sketchybar --add item battery right                       \
           --set battery  script="$PLUGIN_DIR/battery.sh" \
                          icon.padding_right=2            \
                          icon.color=$ORANGE           \
                          icon.y_offset=2                 \
                          label.y_offset=1                \
                          label.font="$FONT:Bold:10.4"    \
                          label.color=$ORANGE          \
                          label.padding_right=8           \
                          background.color=$ORANGE     \
                          background.height=2             \
                          background.y_offset=-9          \
                          background.padding_right=11     \
                          update_freq=10                  \
                          icon.padding_left=0             \
                          label.padding_right=0           \
           --subscribe battery system_woke

