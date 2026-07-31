-- INPUT

hl.config({
    input = {
        kb_layout      = "us",
        kb_variant     = "",
        kb_model       = "",
        kb_options     = "",
        kb_rules       = "",

        follow_mouse   = 1,
        sensitivity    = 0.2, -- -1.0 - 1.0, 0 means no modification
        accel_profile  = "flat",
        force_no_accel = 1,

        touchpad = {
            natural_scroll      = true,
            disable_while_typing = false,
        },
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#gestures
hl.gesture({
    fingers    = 3,
    direction  = "horizontal",
    action     = "workspace",
})

-- Example per-device config
-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs
-- hl.device({
--     name = "epic-mouse-v1",
--     config = {
--         sensitivity = -0.5,
--     },
-- })
