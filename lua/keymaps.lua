local map = vim.keymap.set

--telescope
map("n", "<C-p>", require('telescope.builtin').find_files)
map("n", "<leader>fb", require('telescope.builtin').buffers)
map('n', '<C-;>', require('telescope.builtin').live_grep)

--neotree
map("n", "<C-n>", ":Neotree filesystem reveal<CR>")

--lsp
map("n", "K", vim.lsp.buf.hover,opts)
map('n', 'gd', vim.lsp.buf.definition,opts)
map('n', '<leader>ca', vim.lsp.buf.code_action,opts)
map('n', '<leader>gf', vim.lsp.buf.format,opts)

--treesj
map('n', '<leader>m',require('treesj').toggle)
map('n', '<leader>j',require('treesj').join)
map('n', '<leader>s',require('treesj').split)

