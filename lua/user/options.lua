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

--vim.cmd([[
--  augroup CustomWhichKeyHighlight
    --autocmd!
    --autocmd ColorScheme * highlight WhichKeyFloat guibg=#282a36
    --autocmd ColorScheme * highlight WhichKeyBorder guifg=#ff79c6 guibg=#282a36
    --autocmd ColorScheme * highlight WhichKey guifg=#f8f8f2
    --autocmd ColorScheme * highlight WhichKeySeparator guifg=#6272a4
    --autocmd ColorScheme * highlight WhichKeyGroup guifg=#8be9fd
  --augroup END
--]])

-- Map iron.nvim's send_line command to use python REPL for code blocks in Markdown
vim.api.nvim_exec([[
    augroup IronMarkdown
        autocmd!
        autocmd FileType markdown nmap <leader>r :IronRepl<CR>:IronSend<CR>
    augroup END
]], false)
