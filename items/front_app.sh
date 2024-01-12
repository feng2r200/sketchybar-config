#!/usr/bin/env sh

sketchybar -m --add event window_focus \
              --add event title_change

front_app=(
    icon.drawing=off
    label.font="$FONT:Black:$LABEL_SIZE"
    script="$PLUGIN_DIR/front_app.sh"
)

sketchybar -m --add       item       front_app left                        \
              --set       front_app  "${front_app[@]}"                     \
              --subscribe front_app  window_focus front_app_switched       \
                                     space_change title_change             \
                                     windows_on_spaces mouse.clicked
