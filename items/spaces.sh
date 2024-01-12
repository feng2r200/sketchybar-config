#!/usr/bin/env sh
SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10", "11", "12", "13", "14", "15")

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  space=(
    associated_space=$sid
    icon=${SPACE_ICONS[i]}
    icon.padding_left=2
    icon.padding_right=2
    icon.highlight_color=$ORANGE
    icon.color=$LABEL_COLOR
    icon.position=center
    background.padding_left=5
    background.padding_right=5
    background.height=18
    background.corner_radius=$CORNER_RADIUS
    background.color=$ITEM_COLOR
    background.drawing=on
    label.drawing=off
    click_script="$SPACE_CLICK_SCRIPT"
  )

  sketchybar --add space space.$sid left                            \
             --set space.$sid "${space[@]}"                         \
             --subscribe space.$sid mouse.clicked
done
