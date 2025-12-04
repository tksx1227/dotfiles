return {
    {
        "b0o/incline.nvim",
        event = "VeryLazy",
        config = function()
            local colors = require("tokyonight.colors").setup()

            require("incline").setup({
                highlight = {
                    groups = {
                        InclineNormal = { guibg = colors.bg_dark1, guifg = colors.green1 },
                        InclineNormalNC = { guibg = colors.bg_dark1, guifg = terminal_black },
                    },
                },
                window = {
                    options = {
                        winblend = 0,
                    },
                    placement = {
                        horizontal = "right",
                        vertical = "top",
                    },
                    margin = { horizontal = 0, vertical = 0 },
                    padding = 2,
                },
                render = "basic",
            })
        end,
    },
}
