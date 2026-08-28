#!/bin/bash
set -euo pipefail

offset_x="${1:-200}"
monitor_id=$(hyprctl activewindow -j | jq -r '.monitor // empty')
read -r monitor_width monitor_height reserved_top < <(
  hyprctl monitors -j |
    jq -r --argjson id "$monitor_id" \
      '.[] | select(.id == $id) | "\((.width / .scale) | round) \((.height / .scale) | round) \((.reserved[1] / .scale) | round)"'
)
window_width=$((monitor_width / 2))
window_height=$((monitor_height * 90 / 100))
target_x=$(((monitor_width - window_width) / 2 + offset_x))
target_y=$(((monitor_height - window_height) / 2 - reserved_top))

# Hyprland 0.55+ evaluates dispatches as Lua expressions.
hyprctl dispatch 'hl.dsp.window.float({ action = "toggle" })'
hyprctl dispatch "hl.dsp.window.resize({ x = $window_width, y = $window_height })"
hyprctl dispatch "hl.dsp.window.move({ x = $target_x, y = $target_y })"

"$HOME/.config/hypr/scripts/move-cursor-to-window"
