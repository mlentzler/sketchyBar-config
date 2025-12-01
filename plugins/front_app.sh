#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting



if [ "$NAME" = "front_app" ]; then
  if [ "$SENDER" = "front_app_switched" ]; then
    sketchybar --set "$NAME" label="$INFO"
  fi
elif [ "$NAME" = "front_app_layout" ]; then
  if [ "$SENDER" = "front_app_switched" ] || [ "$SENDER" = "aerospace_mode_changed" ]; then
    sketchybar --set "$NAME" icon="$ICON"
  fi
fi
