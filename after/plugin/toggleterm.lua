require("toggleterm").setup({
    {
        shade_terminals = false,
    }
})

vim.keymap.set("t", "\\", "<cmd>ToggleTerm direction=float<CR>", {})
vim.keymap.set("n", "\\", "<cmd>ToggleTerm direction=float<CR>", {})
