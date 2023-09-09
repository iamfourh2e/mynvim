require("notify").setup({
    stages = "fade_in_slide_out",
    timeout = 5000,
    background_colour = "#1e222a",
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})