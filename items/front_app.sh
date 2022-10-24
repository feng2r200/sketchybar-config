#!/usr/bin/env sh

sketchybar --add       item       front_app left                        \
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
           --subscribe front_app  front_app_switched                    \
                                  window_focus                          \
                                  windows_on_spaces                     \
                                  mouse.clicked

