-- lua/user/onedark.lua

local highlights = require('user.highlights').setup()

require('onedarkpro').setup({
  theme = 'onedark_dark',
  colors = {}, -- Override default colors or leave empty to use defaults
  highlights = highlights;
  styles = {
      comments = "italic",
      functions = "bold",
      keywords = "NONE",
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
