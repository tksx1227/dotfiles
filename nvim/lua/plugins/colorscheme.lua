if false then
    return {}
end

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
}
