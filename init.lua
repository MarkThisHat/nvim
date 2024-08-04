--print('Package Path:', package.path)

package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/lua/?.lua'

-- Function to safely require modules and debug errors
local function safe_require(module)
  local status, result = pcall(require, module)
  if not status then
      print('Error loading module:', module)
      print('Detailed Error:', result)
  else
      print('Successfully loaded module:', module)
  end
end

safe_require('user.settings')
safe_require('user.options')
safe_require('user.keymaps')
safe_require('user.plugins')
safe_require('user.lsp')
safe_require('user.nvim_tree_config')
safe_require('user.treesitter')
safe_require('user.bufferline')
safe_require('user.whichkey_config')
safe_require('user.alpha')
safe_require('user.onedarkpro')
safe_require('user.lspsaga')
safe_require('user.iron_config')
safe_require('user.jupytext_config')
safe_require('user.cmp')
