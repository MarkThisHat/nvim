-- lua/user/keymaps.lua
local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- LSP keybindings
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)

keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)            -- Hover information
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)      -- Go to definition
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)     -- Go to declaration
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)  -- Go to implementation
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)      -- List references
keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)  -- Rename
keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts) -- Code action

-- Optional: Diagnostic keybindings
keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)    -- Go to previous diagnostic
keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)    -- Go to next diagnostic
keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts) -- Set location list

-- Treesitter keybinding for syntax tree inspection
keymap('n', '<leader>ts', ':Inspect<CR>', opts)  -- Highlight captures under cursor
keymap('n', '<leader>tp', ':InspectTree<CR>', opts)  -- Toggle Treesitter playground
keymap('n', '<leader>te', ':EditQuery<CR>', opts)  -- Open the Live Query Editor

