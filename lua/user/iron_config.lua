-- lua/user/iron_config.lua

local iron = require('iron.core')

iron.setup {
    config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
            python = {
                -- A default definition for the python repl
                command = {"ipython", "--no-autoindent"}
            },
        },
        -- How the REPL window will be opened
        repl_open_cmd = require('iron.view').split.vertical.botright(40),
    },
    -- Iron doesn't set keymaps by default anymore, so you have to set them manually
    keymaps = {
        send_motion = "<space>sc",
        visual_send = "<space>sc",
        send_file = "<space>sf",
        send_line = "<space>sl",
        send_mark = "<space>sm",
        mark_motion = "<space>mc",
        mark_visual = "<space>mc",
        remove_mark = "<space>md",
        cr = "<space>s<cr>",
        interrupt = "<space>s<space>",
        exit = "<space>sq",
        clear = "<space>cl",
    },
    -- If the highlight is on, you can change how it looks
    highlight = {
        italic = true
    },
}
