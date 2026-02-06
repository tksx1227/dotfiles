return {
    {
        "toppair/peek.nvim",
        event = { "VeryLazy" },
        build = "deno task --quiet build:fast", -- NOTE: Denoが必要 (`brew install deno`)
        config = function()
            require("peek").setup()
            vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
            vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
        end,
        keys = {
            { "<leader>m", desc = "Markdown Preview" },
            { "<leader>mo", "<cmd>PeekOpen<cr>", desc = "Open Markdown Preview" },
            { "<leader>mc", "<cmd>PeekClose<cr>", desc = "Close Markdown Preview" },
        },
    },
}
