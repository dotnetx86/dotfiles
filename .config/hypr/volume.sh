#!/bin/sh

mutecmd() {
  wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
}

upcmd() {
  wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
}

downcmd() {
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
}

if [ "$1" = "mute" ]; then
  mutecmd
elif [ "$1" = "up" ]; then
  upcmd
else
  downcmd
fi
