#!/usr/bin/env sh
SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10", "11", "12", "13", "14", "15")
SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null" # The script that is run for clicking on space components

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
    icon.drawing=on
    background.padding_left=1
    background.padding_right=1
    click_script="$SPACE_CLICK_SCRIPT"
  )

  sketchybar --add space space.$sid left                            \
             --set space.$sid "${space[@]}"                         \
             --subscribe space.$sid mouse.clicked
done
