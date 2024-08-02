-- lua/user/iron_config.lua

local iron = require('iron.core')

iron.setup {
    config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        repl_definition = {
            -- REPL for Markdown files
            markdown = {
                -- Use Python REPL for Python code blocks in Markdown
                command = {"ipython", "--no-autoindent"}
            },
            -- REPL for Python files
            python = {
                command = {"ipython", "--no-autoindent"}
            },
        },
        -- Automatically open the REPL window
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
