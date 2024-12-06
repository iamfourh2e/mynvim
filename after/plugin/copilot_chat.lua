require("CopilotChat").setup {
    -- See Configuration section for options
}
vim.keymap.set('n', '<leader>ccb', ':CopilotChatBuffer ', { desc = 'CopilotChat - Chat with current buffer' })
vim.keymap.set('n', '<leader>cce', '<cmd>CopilotChatExplain<cr>', { desc = 'CopilotChat - Explain code' })
vim.keymap.set('n', '<leader>cct', '<cmd>CopilotChatTests<cr>', { desc = 'CopilotChat - Generate tests' })
vim.keymap.set('n', '<leader>aa', '<cmd>CopilotChatToggle<cr>', { desc = 'CopilotChat - Toggle Vsplit' })
vim.keymap.set('x', '<leader>ccv', ':CopilotChatVisual ', { desc = 'CopilotChat - Open in vertical split' })
vim.keymap.set('x', '<leader>ccx', ':CopilotChatInPlace<cr>', { desc = 'CopilotChat - Run in-place code' })
vim.keymap.set('n', '<leader>ccf', '<cmd>CopilotChatFixDiagnostic<cr>', { desc = 'CopilotChat - Fix diagnostic' })
vim.keymap.set('n', '<leader>ccr', '<cmd>CopilotChatReset<cr>', { desc = 'CopilotChat - Reset' })
