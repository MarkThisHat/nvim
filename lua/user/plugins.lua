-- lua/user/plugins.lua

vim.opt.rtp:prepend("~/.local/share/nvim/site/pack/lazy/opt/lazy.nvim")

require('lazy').setup({
    'kyazdani42/nvim-tree.lua',
    'kyazdani42/nvim-web-devicons',
    'hrsh7th/nvim-cmp',        -- Completion engine
    'hrsh7th/cmp-nvim-lsp',    -- LSP completion source for nvim-cmp
    'hrsh7th/cmp-buffer',      -- Buffer completion source for nvim-cmp
    'hrsh7th/cmp-path',        -- Path completion source for nvim-cmp
    'hrsh7th/cmp-cmdline',     -- Cmdline completion source for nvim-cmp
    'L3MON4D3/LuaSnip',        -- Snippet engine
    'saadparwaiz1/cmp_luasnip',-- Snippet completion source for nvim-cmp
    'onsails/lspkind-nvim',    -- Pictograms for LSP completion items
    'echasnovski/mini.nvim',
    'neovim/nvim-lspconfig',
    {
        'nvim-treesitter/nvim-treesitter',
        run = 'TSUpdate'
    },
    {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    },
    {
        'glepnir/lspsaga.nvim',
        event = 'BufRead'
    },
    'folke/which-key.nvim',
    'goolord/alpha-nvim',
    'Vigemus/iron.nvim',
    'goerz/jupytext.vim',
    'olimorris/onedarkpro.nvim'
})
