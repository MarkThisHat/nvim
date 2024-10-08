-- lua/user/bufferline.lua

require('bufferline').setup {
  options = {
      numbers = "none",
      close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
      right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
      middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
      indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'icon',
      },
      buffer_close_icon = '',
      modified_icon = '●',
      close_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      --- name_formatter can be used to change the buffer's label in the bufferline.
      --- Please note some names can/will break the
      --- bufferline so use this at your discretion e.g
      --- name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      ---   -- remove extension from markdown files for example
      ---   if buf.name:match('%.md') then
      ---     return vim.fn.fnamemodify(buf.name, ':t:r')
      ---   end
      --- end,
      max_name_length = 18,
      max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
      tab_size = 18,
      diagnostics = false,    -- can be "nvim_lsp" | "coc"
      diagnostics_update_in_insert = false,
      -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --   return "("..count..")"
      -- end,
      offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center", padding = 1}},
      show_buffer_icons = true, -- disable filetype icons for buffers
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      -- can also be a table containing 2 custom separators
      -- [focused and unfocused]. eg: { '|', '|' }
      separator_style = "thin",
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      sort_by = 'id'
  }
}
