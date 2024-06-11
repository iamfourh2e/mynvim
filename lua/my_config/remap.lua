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
-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
--line color
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'gray', bold = false })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#f6e71d', bold = true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'gray', bold = false })
