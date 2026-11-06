local colors = require("tokyonight.colors").setup()

return {
    {
        "petertriho/nvim-scrollbar",
        -- TODO: 2026-11-16 に v2 が main にマージされたらこの行を削除する
        branch = "refactor/v2",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        dependencies = {
            "lewis6991/gitsigns.nvim",
            "folke/tokyonight.nvim",
        },
        opts = {
            set_highlights = true,
            marks = {
                Search = { highlight = { fg = colors.orange } },
                Error = { highlight = { fg = colors.error } },
                Warn = { highlight = { fg = colors.warning } },
                Info = { highlight = { fg = colors.info } },
                Hint = { highlight = { fg = colors.hint } },
                Misc = { highlight = { fg = colors.purple } },
            },
            providers = {
                cursor = false,
                gitsigns = true, -- Requires gitsigns
            },
            scrollbar = {
                show = true,
                hide_if_all_visible = true,
                thumb = {
                    highlight = { bg = colors.fg_dark },
                },
            },
        },
    },
}
