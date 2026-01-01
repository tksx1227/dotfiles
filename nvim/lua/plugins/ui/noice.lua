return {
    {
        "folke/noice.nvim",
        version = "*",
        event = { "VeryLazy" },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        opts = {},
    },
    {
        "rcarriga/nvim-notify",
        lazy = true,
        opts = {
            stages = "static",
            timeout = 3000,
            on_open = function(win)
                vim.api.nvim_win_set_config(win, { zindex = 100 })
            end,
        },
    },
}
