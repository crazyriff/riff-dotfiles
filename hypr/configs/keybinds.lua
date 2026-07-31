-- KEYBINDINGS
-- See https://wiki.hyprland.org/Configuring/Keywords/

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

local terminal    = "kitty"
local fileManager = "nautilus"
local menu        = "rofi -show drun"
local browser     = "zen-browser"
local player      = "spotify"

local scripts     = "~/.config/hypr/scripts"
local rofiConfig  = "~/.config/rofi/config.rasi"

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/
hl.bind(mainMod .. " + Return",         hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd(terminal, { float = true, size = { 800, 550 } })) -- terminal floating
hl.bind(mainMod .. " + Q",              hl.dsp.window.kill()) -- kill active window
hl.bind("CTRL + ALT + Delete",          hl.dsp.exit()) -- exit Hyprland
hl.bind(mainMod .. " + E",              hl.dsp.exec_cmd(fileManager)) -- opens file manager
hl.bind(mainMod .. " + Space",          hl.dsp.window.float({ action = "toggle" })) --
hl.bind(mainMod .. " + D",              hl.dsp.exec_cmd(menu)) -- rofi (app menu)
hl.bind(mainMod .. " + P",              hl.dsp.window.pseudo()) -- dwindle
hl.bind(mainMod .. " + J",              hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainMod .. " + R",              hl.dsp.exec_cmd(scripts .. "/wbrestart.sh")) -- restarts waybar and swaync
hl.bind(mainMod .. " + B",              hl.dsp.exec_cmd(browser)) -- default browser
hl.bind(mainMod .. " + L",              hl.dsp.exec_cmd(scripts .. "/hyprlock.sh")) -- locks
hl.bind(mainMod .. " + SHIFT + F",      hl.dsp.window.fullscreen()) -- fullscreen
hl.bind(mainMod .. " + SHIFT + S",      hl.dsp.exec_cmd(scripts .. "/screenshot.sh")) -- takes screenshots
hl.bind(mainMod .. " + Print",          hl.dsp.exec_cmd(scripts .. "/fullscreen-screenshot.sh")) -- fullscreen screenshot
hl.bind(mainMod .. " + W",              hl.dsp.exec_cmd(scripts .. "/wppicker.sh")) -- wallpaper picker
hl.bind(mainMod .. " + SHIFT + Q",      hl.dsp.exec_cmd(scripts .. "/KillActiveProcess.sh")) -- kill active process
hl.bind(mainMod .. " + C",              hl.dsp.exec_cmd("hyprpicker -a")) -- color picker
hl.bind(mainMod .. " + N",              hl.dsp.exec_cmd(scripts .. "/hyprsunset-toggle.sh")) -- night mode toggle
hl.bind(mainMod .. " + CTRL + B",       hl.dsp.exec_cmd(scripts .. "/WaybarStyles.sh")) -- waybar styles menu
hl.bind(mainMod .. " + ALT + B",        hl.dsp.exec_cmd(scripts .. "/WaybarLayout.sh")) -- waybar layout menu
hl.bind(mainMod .. " + SHIFT + H",      hl.dsp.exec_cmd("pkill -SIGUSR1 waybar")) -- hide waybar
hl.bind(mainMod .. " + SHIFT + E",      hl.dsp.exec_cmd("kitty yazi")) -- yazi file manager
hl.bind(mainMod .. " + H",              hl.dsp.exec_cmd(scripts .. "/keybinds.sh")) -- shows keybinds
hl.bind(mainMod .. " + V",              hl.dsp.exec_cmd("cliphist list | rofi -dmenu -config " .. rofiConfig .. " | cliphist decode | wl-copy")) -- clipboard
hl.bind(mainMod .. " + period",         hl.dsp.exec_cmd('rofimoji --action type --selector-args="-config ' .. rofiConfig .. '"'))
hl.bind(mainMod .. " + M",              hl.dsp.exec_cmd(player)) -- opens music player
hl.bind(mainMod .. " + EQUAL",          hl.dsp.exec_cmd("gnome-calculator", { float = true, size = { 400, 500 } })) -- floating calculator

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Move windows
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.window.move({ direction = "down" }))

-- Resize windows (repeat on hold)
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -50, y = 0, relative = true }),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 50,  y = 0, relative = true }),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0,   y = -50, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0,   y = 50, relative = true }),  { repeating = true })

-- Switch workspaces with mainMod + [0-9]
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
end
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = "10" }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 9 do
    hl.bind(mainMod .. " + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i) }))
end
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))

-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special({ name = "magic" }))
-- hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd(scripts .. "/volume.sh --inc"),    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd(scripts .. "/volume.sh --dec"),    { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd(scripts .. "/volume.sh --toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(scripts .. "/brightness.sh --inc"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scripts .. "/brightness.sh --dec"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind(mainMod .. " + ALT + right", hl.dsp.exec_cmd("playerctl next"),        { locked = true }) -- next song
hl.bind(mainMod .. " + ALT + Space", hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true }) -- pause song
-- hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(mainMod .. " + ALT + left",  hl.dsp.exec_cmd("playerctl previous"),    { locked = true }) -- previous song
