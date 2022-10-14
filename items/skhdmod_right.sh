#!/usr/bin/env sh

sketchybar  --add item            skhd.mod.right right                \
            --set skhd.mod.right  script="$PLUGIN_DIR/skhdmod.sh"     \
                                  icon.font="$FONT:Bold:$LABEL_SIZE"  \
                                  icon.padding_left=10                \
                                  icon.padding_right=10               \
                                  icon.drawing=on                     \
                                  background.padding_left=10          \
                                  background.padding_right=10         \
                                  background.color=0x44ffffff         \
                                  background.corner_radius=5          \
                                  background.y_offset=-1              \
                                  background.height=12                \
                                  background.drawing=on               \
                                  label.drawing=off                   \
                                  updates=on                          \
            --subscribe skhd.mod.right      skhd_mod                          \
            --add       item                system.yabai.right right          \
            --set       system.yabai.right  script="$PLUGIN_DIR/yabai.sh"     \
                                            icon.font="$FONT:Bold:$ICON_SIZE" \
                                            label.drawing=off                 \
                                            icon.padding_left=10              \
                                            icon.padding_right=10             \
                                            icon.width=30                     \
                                            icon=$YABAI_GRID                  \
                                            icon.color=$GREEN                 \
                                            updates=on                        \
            --subscribe system.yabai.right window_focus mouse.clicked


sketchybar --add item             separator.right right                     \
           --set separator.right  icon=┃                                    \
                                  icon.font="$FONT:Regular:$ICON_SIZE"      \
                                  background.padding_left=-1                \
                                  background.padding_right=-5               \
                                  label.drawing=off                         \
                                  icon.color=$YELLOW
