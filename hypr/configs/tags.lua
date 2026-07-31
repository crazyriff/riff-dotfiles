-- TAGS

hl.window_rule({
    match = { class = "([Mm]pv|vlc)" },
    tag   = "+multimedia_video",
})
hl.window_rule({
    match = { class = "(nm-applet|nm-connection-editor|blueman-manager|org.gnome.FileRoller)" },
    tag   = "+settings",
})
hl.window_rule({
    match = { class = "(org.gnome.DiskUtility|wihotspot(-gui)?)" },
    tag   = "+settings",
})
hl.window_rule({
    match = { class = "org.gnome.SystemMonitor" },
    tag   = "+settings",
})
hl.window_rule({
    match = { class = "org.gnome.Evince" },
    tag   = "+settings",
})
hl.window_rule({
    match = { class = "(eog|org.gnome.Loupe)" },
    tag   = "+settings",
})
