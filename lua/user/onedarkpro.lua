-- lua/user/onedark.lua

require('onedarkpro').setup({
  theme = 'onedark_dark',
  colors = {}, -- Override default colors or leave empty to use defaults
  highlights = {
    Function = { fg = "#dcdcaa" },
    Comment = { fg = "#6a9955" },
    String = { fg = "#ce9178" },
    Variable = { fg = "#9CDCFE" }
  }, -- Override highlight groups or leave empty to use defaults
  styles = {
      comments = "italic",
      keywords = "bold",
      functions = "bold",
      strings = "NONE",
      variables = "NONE"
  },
  options = {
      bold = true, -- Use the themes opinionated bold styles?
      italic = true, -- Use the themes opinionated italic styles?
      underline = true, -- Use the themes opinionated underline styles?
      undercurl = true, -- Use the themes opinionated undercurl styles?
      cursorline = true, -- Use cursorline highlighting?
      transparency = false, -- Use a transparent background?
      terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
      window_unfocussed_color = false -- When the window is out of focus, change the normal background?
  }
})

-- Load the colorscheme
vim.cmd('colorscheme onedark_dark')
