require("todo-comments").setup()

-- Lua
vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<cr>",
    { silent = true, noremap = true }
)
