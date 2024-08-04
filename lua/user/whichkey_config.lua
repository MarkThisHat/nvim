-- lua/user/whichkey_config.lua
local wk = require("which-key")

wk.setup {
    plugins = {
        marks = true,
        registers = true,
        spelling = {
            enabled = true,
            suggestions = 20,
        },
        presets = {
            operators = false,
            motions = false,
            text_objects = false,
            windows = true,
            nav = true,
            z = true,
            g = true,
        },
    },
    icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
    },
    win = {
        -- don't allow the popup to overlap with the cursor
        no_overlap = true,
        -- width = 1,
        -- height = { min = 4, max = 25 },
        -- col = 0,
        -- row = math.huge,
        border = "single",
        padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
        title = true,
        title_pos = "center",
        zindex = 1000,
        -- Additional vim.wo and vim.bo options
        bo = {},
        wo = {
          winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
        },
    },
    layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
    },
    show_help = true,
}

wk.add({
    { "g", desc = "GoTo Options" },
    { "z", desc = "Folding Commands"},
    { "[", desc = "Previous ..." },
    { "]", desc = "Next ..." },
    { " ", desc = "Leader Menu" },
    { "<leader>c", group = "Code Actions" },
    { "<leader>f", group = "File" },
    { "<leader>m", group = "Markdown Motions" },
    { "<leader>r", group = "Run on REPL" },
    { "<leader>s", group = "Send to REPL" },
    { "<leader>t", group = "Treesitter Options" },
    { "<space>sc", desc = "Send Motion to REPL", mode = "n" },
    { "<space>sc", desc = "Send Selection to REPL", mode = "v" },
    { "<space>sf", desc = "Send File to REPL", mode = "n" },
    { "<space>sl", desc = "Send Line to REPL", mode = "n" },
    { "<space>sm", desc = "Send Mark to REPL", mode = "n" },
    { "<space>mc", desc = "Mark Motion", mode = "n" },
    { "<space>mc", desc = "Mark Visual Selection", mode = "v" },
    { "<space>md", desc = "Remove Mark", mode = "n" },
    { "<space>s<cr>", desc = "Send CR to REPL", mode = "n" },
    { "<space>s<space>", desc = "Interrupt REPL", mode = "n" },
    { "<space>sq", desc = "Exit REPL", mode = "n" },
    { "<space>cl", desc = "Clear REPL", mode = "n" },
  })
