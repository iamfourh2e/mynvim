require("gruvbox").setup({
    palette_overrides = {
        bright_green = "#990000",
    },
    overrides = {
        SignColumn = { bg = "#ff9900" }
    },
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "",  -- can be "hard", "soft" or empty string
    dim_inactive = false,
    transparent_mode = true,

})
