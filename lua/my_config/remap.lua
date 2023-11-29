local opts = { noremap = true, silent = true }

vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>ll", "ggVG=", { silent = true })
--delete buffer keymap
vim.keymap.set("n", "<leader>bd", "<cmd>:bdelete<CR>", { silent = true })
vim.keymap.set("n", "<leader>bn", "<cmd>:bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", "<cmd>:bprevious<CR>", { silent = true })
