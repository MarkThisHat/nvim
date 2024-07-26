-- lua/user/lsp.lua

local lspconfig = require('lspconfig')

-- Example configuration for Python using pyright
lspconfig.pyright.setup{}

-- Configuration for JavaScript/TypeScript using tsserver
lspconfig.tsserver.setup{}

-- Configuration for C/C++ using clangd
lspconfig.clangd.setup{}

-- Configuration for Lua using lua_ls
lspconfig.lua_ls.setup{
  settings = {
      Lua = {
          runtime = {
              version = 'LuaJIT',
              path = vim.split(package.path, ';'),
          },
          diagnostics = {
              globals = {'vim'},
          },
          workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = {
              enable = false,
          },
      },
  },
}
