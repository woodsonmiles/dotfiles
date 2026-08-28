-- Personal window layout bindings.

local home = os.getenv("HOME")

-- Omarchy 4 binds SUPER+T by default to a plain floating toggle.
hl.unbind("SUPER + T")

o.bind("SUPER + T", "Float window at 50% x 90%", home .. "/.config/hypr/scripts/tile-float-center.sh 200")
o.bind("SUPER + M", "Float window centered", home .. "/.config/hypr/scripts/tile-float-center.sh 0")
o.bind("SUPER + N", "Tile & float next", home .. "/.config/hypr/scripts/tile-and-float-next")

o.bind("SUPER + SHIFT + T", "Teams", { webapp = "https://teams.microsoft.com" })
o.bind("SUPER + SHIFT + ALT + O", "Outlook", { webapp = "https://outlook.office.com" })
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Steam", { launch = "steam", focus = "^steam$" })
hl.unbind("SUPER + SHIFT + D")
o.bind("SUPER + SHIFT + D", "Discord", { launch = "discord", focus = "^discord$" })
o.bind("SUPER + CTRL + SHIFT + D", "Docker", { tui = "lazydocker" })
