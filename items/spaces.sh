#!/usr/bin/env sh
SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left                              \
             --set space.$sid associated_space=$sid                   \
                              icon=${SPACE_ICONS[i]}                  \
                              icon.padding_left=8                     \
                              icon.padding_right=8                    \
                              icon.highlight_color=$YELLOW            \
                              icon.color=$LABEL_COLOR                 \
                              background.padding_left=5               \
                              background.padding_right=5              \
                              background.height=18                    \
                              background.corner_radius=$CORNER_RADIUS \
                              background.color=$ITEM_COLOR            \
                              background.drawing=on                   \
                              label.drawing=off                       \
                              click_script="$SPACE_CLICK_SCRIPT" 
done

# First Seperator on the bar
sketchybar --add item       separator left                          \
           --set separator  icon=┃                                  \
                            icon.font="$FONT:Regular:$ICON_SIZE"    \
                            background.padding_left=-3              \
                            background.padding_right=-1             \
                            label.drawing=off                       \
                            icon.color=$YELLOW

