-- lua/user/lsp.lua

local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Example configuration for Python using pyright
lspconfig.pyright.setup{
    capabilities = capabilities,
}

-- Configuration for JavaScript/TypeScript using tsserver
lspconfig.tsserver.setup{
    capabilities = capabilities,
}

-- Configuration for C/C++ using clangd
lspconfig.clangd.setup{
    capabilities = capabilities,
}

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
  capabilities = capabilities,
}
