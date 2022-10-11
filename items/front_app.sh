#!/usr/bin/env sh

sketchybar --add       event        window_focus                        \
           --add       item         system.yabai left                   \
           --set       system.yabai script="$PLUGIN_DIR/yabai.sh"       \
                                    icon.font="$FONT:Bold:$ICON_SIZE"   \
                                    label.drawing=off                   \
                                    icon.padding_left=8                 \
                                    icon.width=30                       \
                                    icon=$YABAI_GRID                    \
                                    icon.color=$GREEN                   \
                                    updates=on                          \
           --subscribe system.yabai window_focus mouse.clicked          \
                                                                        \
           --add       item       front_app left                        \
           --set       front_app  script="$PLUGIN_DIR/front_app.sh"     \
                                  icon.drawing=off                      \
                                  label.font="$FONT:Black:$LABEL_SIZE"  \
                                  label.y_offset=1                      \
                                  label.color=0xffc382db                \
                                  label.padding_left=4                  \
                                  label.padding_right=6                 \
                                  label.color=0xffd5d9dd                \
                                  background.color=0xffc382db           \
                                  background.height=2                   \
                                  background.y_offset=-9                \
                                  background.padding_left=6             \
                                  background.padding_right=8            \
                                  updates=when_shown                    \
           --subscribe front_app  front_app_switched

