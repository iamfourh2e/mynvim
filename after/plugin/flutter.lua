
require("flutter-tools").setup {
}

vim.keymap.set("n", "<leader>fe", "<cmd>:FlutterEmulators<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>fd", "<cmd>:FlutterDevices<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>fg", "<cmd>:FlutterRun<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>fr", "<cmd>:FlutterRestart<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>fq", "<cmd>:FlutterQuit<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<leader>fl", "<cmd>:FlutterDevTools<CR>", {noremap=true, silent=true})

