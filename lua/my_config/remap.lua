local options = { noremap = true }

vim.g.mapleader=","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", options)
vim.keymap.set("n", "<leader>w","<cmd>:w<CR>", {silent=true})
vim.keymap.set("n", "<C-h>", "<C-w>h", {silent =true})
vim.keymap.set("n", "<C-l>", "<C-w>l", {silent =true})
vim.keymap.set("n", "<leader>ll", "ggVG=",{silent = true})
