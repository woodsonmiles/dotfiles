#!/bin/bash
hyprctl dispatch togglefloating
hyprctl dispatch resizeactive exact 50% 90%
hyprctl dispatch centerwindow
hyprctl dispatch moveactive 200 -40
sleep 0.05
WIN=$(hyprctl activewindow -j)
if [ -n "$WIN" ]; then
  X=$(echo "$WIN" | jq -r '.at[0] + (.size[0] / 2)')
  Y=$(echo "$WIN" | jq -r '.at[1] + (.size[1] / 2)')
  hyprctl dispatch movecursor exact "$X" "$Y"
fi
