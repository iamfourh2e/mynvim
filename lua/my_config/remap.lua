local options = { noremap = true }

vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", options)
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>ll", "ggVG=", { silent = true })
--delete buffer keymap
vim.keymap.set("n", "<leader>bd", "<cmd>:bdelete<CR>", { silent = true })
vim.keymap.set("n", "<leader>bn", "<cmd>:bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", "<cmd>:bprevious<CR>", { silent = true })
