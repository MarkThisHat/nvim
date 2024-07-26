-- lua/user/plugins.lua

vim.opt.rtp:prepend("~/.local/share/nvim/site/pack/lazy/opt/lazy.nvim")

require('lazy').setup({
    'kyazdani42/nvim-tree.lua',
    'kyazdani42/nvim-web-devicons',
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
    'olimorris/onedarkpro.nvim'
})
