function SetLineColor()
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "grey" })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'gray', bold = false })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#C0C309', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'gray', bold = false })
end

function LightColor(color, mode)
    c = color or "gruvbox"
    --vim.cmd.colorscheme "gruvbox"
    vim.o.background = "light"
    vim.cmd.colorscheme(c)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function DarkColor(color)
    vim.cmd.colorscheme "catppuccin"
    vim.o.background = "dark" -- or "light" for light mode
end

-- Helper function for transparency formatting
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

vim.g.neovide_transparency = 0.6
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117" .. alpha()
vim.o.guifont = "Hack Nerd Font Mono:h22" -- text below applies for VimScript
vim.g.neovide_window_blurred = true

DarkColor()
SetLineColor()
