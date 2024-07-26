-- lua/user/lspsaga.lua

require('lspsaga').setup({
  use_saga_diagnostic_sign = true,
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  diagnostic_header_icon = '   ',
  code_action_icon = ' ',
  code_action_prompt = {
      enable = true,
      sign = true,
      sign_priority = 40,
      virtual_text = true,
  },
  finder_definition_icon = '  ',
  finder_reference_icon = '  ',
  max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
  finder_action_keys = {
      open = 'o',
      vsplit = 's',
      split = 'i',
      quit = 'q',
      scroll_down = '<C-f>',
      scroll_up = '<C-b>', -- quit can be a table
  },
  code_action_keys = {
      quit = 'q',
      exec = '<CR>',
  },
  rename_action_keys = {
      quit = '<C-c>',
      exec = '<CR>', -- quit can be a table
  },
  definition_preview_icon = '  ',
  border_style = 'single', -- "single" | "double" | "round" | "plus"
  rename_prompt_prefix = '➤',
  server_filetype_map = {},
  diagnostic_prefix_format = '%d. ',
  diagnostic_message_format = '%m %c',
  highlight_prefix = false,
})
