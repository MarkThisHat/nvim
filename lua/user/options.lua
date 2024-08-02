-- lua/user/options.lua

-- Global settings
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- File type specific settings using vim.cmd
vim.cmd [[
  augroup FileTypePython
    autocmd!
    autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
  augroup END
]]

vim.cmd [[
  augroup FileTypeCpp
    autocmd!
    autocmd FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
  augroup END
]]

-- Map iron.nvim's send_line command to use python REPL for code blocks in Markdown
vim.api.nvim_exec([[
    augroup IronMarkdown
        autocmd!
        autocmd FileType markdown nmap <leader>r :IronRepl<CR>:IronSend<CR>
    augroup END
]], false)
