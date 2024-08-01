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

--nonels
local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
	},
})
