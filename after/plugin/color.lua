function LightColor(color, mode)
    c = color or "gruvbox"
    vim.o.background = mode or "dark" -- or "light" for light mode
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

LightColor()
