return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
            style = "moon", -- "moon", "storm", "night", "day"
            styles = {
                -- Background styles. Can be "dark", "transparent" or "normal"
                sidebars = "transparent",
                floats = "transparent",
            },
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        "maxmx03/fluoromachine.nvim",
        lazy = false,
        priority = 5000,
        config = function()
            local fm = require("fluoromachine")

            fm.setup({
                theme = "fluoromachine", -- "delta", "fluoromachine", "retrowave"
                glow = false,
                transparent = true,
            })

            vim.cmd.colorscheme("fluoromachine")
        end,
    },
}
