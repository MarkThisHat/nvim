-- lua/user/plugins.lua

vim.opt.rtp:prepend("~/.local/share/nvim/site/pack/lazy/opt/lazy.nvim")

require('lazy').setup({
    'kyazdani42/nvim-tree.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
    {
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    },
    'folke/which-key.nvim',
    'goolord/alpha-nvim',
})
