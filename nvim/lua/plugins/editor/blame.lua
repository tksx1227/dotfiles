return {
    {
        "FabijanZulj/blame.nvim",
        lazy = false,
        keys = {
            { "<C-g>b", mode = "n", "<cmd>BlameToggle<cr>", desc = "Toggle Blame" },
        },
        config = function()
            require("blame").setup({})
        end,
    },
}
