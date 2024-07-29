local map = vim.keymap.set

--map leaders
--telescope
map("n", "<C-p>", require('telescope.builtin').find_files)
map("n", "<leader>fb", require('telescope.builtin').buffers)
map('n', '<C-;>', require('telescope.builtin').live_grep)

--neotree
map("n", "<C-n>", ":Neotree filesystem reveal<CR>", {})
