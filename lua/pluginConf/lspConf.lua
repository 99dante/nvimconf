--mason
require("mason").setup()


--bridge
require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls","clangd"}
})

--lspconfig
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
