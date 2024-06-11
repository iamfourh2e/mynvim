function LightColor(color, mode)
    c = color or "gruvbox"
    vim.o.background = "dark"
    vim.cmd.colorscheme(c)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function DarkColor(color)
    c = color or "gruvbox"
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd.colorscheme(c)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Helper function for transparency formatting
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- vim.g.neovide_transparency = 0.0
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

vim.g.neovide_transparency = 0.6
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()
vim.o.guifont = "Hack Nerd Font Mono:h22" -- text below applies for VimScript
vim.g.neovide_window_blurred = true
LightColor()
