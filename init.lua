--package.path = vim.fn.stdpath('config') .. '/lua/?.lua;' .. package.path

--print('Updated Package Path:', package.path)

package.path = package.path .. ';' .. vim.fn.stdpath('config') .. '/lua/?.lua'
require('user.options')
require('user.keymaps')
require('user.plugins')
require('user.lsp')
require('user.nvim-tree')
require('user.treesitter')
require('user.bufferline')
require('user.which-key')
require('user.alpha')
--require('user.project')
