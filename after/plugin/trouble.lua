-- Lua
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "gR", "<cmd>Trouble lsp_references toggle<cr>",
    { silent = true, noremap = true }
)

--setup trouble
require("trouble").setup {}
