#!/usr/bin/env sh

sketchybar  --add event           skhd_mod                          \
            --add item            skhd.mod left                     \
            --set skhd.mod        script="$PLUGIN_DIR/skhdmod.sh"   \
                                  icon.font="$FONT:Bold:$LABEL_SIZE"\
                                  icon.padding_left=10              \
                                  icon.padding_right=10             \
                                  icon.drawing=on                   \
                                  background.padding_left=5         \
                                  background.padding_right=5        \
                                  background.color=0x44ffffff       \
                                  background.corner_radius=5        \
                                  background.height=18              \
                                  background.drawing=on             \
                                  label.drawing=off                 \
                                  updates=on                        \
            --subscribe skhd.mod  skhd_mod

sketchybar --add item       separator2 left                         \
           --set separator2 icon=┃                                  \
                            icon.font="$FONT:Regular:$ICON_SIZE"    \
                            background.padding_left=-3              \
                            background.padding_right=-5             \
                            label.drawing=off                       \
                            icon.color=$YELLOW
