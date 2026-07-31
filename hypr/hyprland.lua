-- Hyprland Lua configuration
-- Converted from hyprlang (.conf) for Hyprland 0.56
-- Ref: https://wiki.hypr.land/Configuring/Start/

package.path = (os.getenv("HOME") or "") .. "/.config/hypr/?.lua;" .. package.path

------------------
-- MONITORS
------------------
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = 1.2, -- scaling
})

------------------
-- AUTOSTART
------------------
hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("sleep 2 && awww img ~/.config/hypr/current_wallpaper --transition-type any --transition-fps 60 --transition-duration 2")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("swaync")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset -t 4500")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

------------------
-- ENVIRONMENT VARIABLES
------------------
hl.env("XCURSOR_THEME", "Adwaita")
hl.env("HYPRCURSOR_THEME", "Adwaita")
hl.env("XCURSOR_SIZE", "40")
hl.env("HYPRCURSOR_SIZE", "40")

------------------
-- WINDOW BEHAVIOR
------------------
hl.window_rule({
    match = { class = "^(nmtui-float)$" },
    float = true,
})
hl.window_rule({
    match = { class = "^(nmtui-float)$" },
    size  = { 800, 550 },
})

------------------
-- PERMISSIONS
-- Requires a Hyprland restart; not applied on-the-fly for security.
------------------
-- hl.config({
--     ecosystem = {
--         enforce_permissions = 1,
--     },
-- })
-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

------------------
-- TAGS
------------------
require("configs.tags")

------------------
-- LOOK AND FEEL
------------------
require("configs.looknfeel")

------------------
-- ANIMATIONS
------------------
require("configs.UserAnimations")

------------------
-- WINDOWRULES AND LAYERRULES
------------------
require("configs.windowrules")

------------------
-- LAYOUTS
------------------
hl.config({
    dwindle = { preserve_split = true }, -- You probably want this
})
hl.config({
    master = { new_status = "master" },
})

------------------
-- MISC / DEBUG
------------------
hl.config({
    misc = {
        force_default_wallpaper = 0, -- 0/1 disables the anime mascot wallpapers
        disable_hyprland_logo   = true,
    },
})
hl.config({
    debug = { vfr = true }, -- save resources
})

------------------
-- INPUT
------------------
require("configs.input")

------------------
-- KEYBINDS
------------------
require("configs.keybinds")
