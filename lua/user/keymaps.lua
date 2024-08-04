-- lua/user/keymaps.lua
local function opts(desc)
  return { noremap = true, silent = true, desc = desc }
end

local keymap = vim.api.nvim_set_keymap

-- LSP keybindings
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts("Find Files"))

keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts("Hover Information"))
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts("Go to Definition"))
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts("Go to Declaration"))
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts("Go to Implementation"))
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts("List References"))
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts("Rename"))
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts("Code Action"))

-- Optional: Diagnostic keybindings
keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts("Previous Diagnostic"))
keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts("Next Diagnostic"))
keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts("Set Location List"))

-- Treesitter keybindings for syntax tree inspection
keymap("n", "<leader>ts", ":Inspect<CR>", opts("Highlight Captures Under Cursor"))
keymap("n", "<leader>tp", ":InspectTree<CR>", opts("Toggle Treesitter Playground"))
keymap("n", "<leader>te", ":EditQuery<CR>", opts("Open Live Query Editor"))

-- Iron keymaps
keymap("n", "<leader>rs", "<cmd>IronRepl<cr>", opts("Start IronRepl"))
keymap("n", "<leader>rr", "<cmd>IronRestart<cr>", opts("Restart IronRepl"))
keymap("n", "<leader>rF", "<cmd>IronFocus<cr>", opts("Focus IronRepl"))
keymap("n", "<leader>rh", "<cmd>IronHide<cr>", opts("Hide IronRepl"))

-- Removals
keymap("n", "gc", "", opts("Remove Keybinding"))
