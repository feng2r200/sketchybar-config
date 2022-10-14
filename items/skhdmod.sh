#!/usr/bin/env sh

sketchybar  --add event           skhd_mod                            \
            --add item            skhd.mod left                       \
            --set skhd.mod        script="$PLUGIN_DIR/skhdmod.sh"     \
                                  icon.font="$FONT:Bold:$LABEL_SIZE"  \
                                  icon.padding_left=10                \
                                  icon.padding_right=10               \
                                  icon.drawing=on                     \
                                  background.padding_left=5           \
                                  background.padding_right=5          \
                                  background.color=0x44ffffff         \
                                  background.corner_radius=5          \
                                  background.y_offset=-1              \
                                  background.height=12                \
                                  background.drawing=on               \
                                  label.drawing=off                   \
                                  updates=on                          \
            --subscribe skhd.mod  skhd_mod                            \
            --add       event        window_focus                     \
            --add       item         system.yabai left                \
            --set       system.yabai script="$PLUGIN_DIR/yabai.sh"    \
                                    icon.font="$FONT:Bold:$ICON_SIZE" \
                                    label.drawing=off                 \
                                    icon.padding_left=2               \
                                    icon.padding_right=2              \
                                    icon.position=center              \
                                    icon.width=30                     \
                                    icon=$YABAI_GRID                  \
                                    icon.color=$WHITE                 \
                                    updates=on                        \
            --subscribe system.yabai window_focus mouse.clicked       \


sketchybar --add item       separator2 left                           \
           --set separator2 icon=┃                                    \
                            icon.font="$FONT:Regular:$ICON_SIZE"      \
                            background.padding_left=-1                \
                            background.padding_right=0                \
                            label.drawing=off                         \
                            icon.color=$YELLOW
