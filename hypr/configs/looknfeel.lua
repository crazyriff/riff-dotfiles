-- LOOK AND FEEL
local colors = require("colors")

hl.config({
    general = {
        gaps_in        = 5,
        gaps_out       = 10,
        border_size    = 2,
        col = {
            active_border   = colors.outline,
            inactive_border = colors.outline_variant,
        },
        resize_on_border = false,
        allow_tearing    = false, -- Set to true if your rendering workload is very high

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2, -- [0, 4], higher is less rounding

        active_opacity   = 1.0,
        inactive_opacity = 0.8,

        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,
            size    = 5,
            passes  = 3,
            popups  = true,
        },
    },
})
