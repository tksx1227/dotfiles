if false then
    return {}
end

return {
    {
        "akinsho/bufferline.nvim",
        tag = "v4.7.0",
        dependencies = "nvim-tree/nvim-web-devicons",
        event = "VeryLazy",
        keys = {
            { "<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle Pin" },
            { "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", desc = "Delete Non-Pinned Buffers" },
            { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Delete Other Buffers" },
            { "<leader>bl", "<cmd>BufferLineCloseRight<cr>", desc = "Delete Buffers to the Right" },
            { "<leader>bh", "<cmd>BufferLineCloseLeft<cr>", desc = "Delete Buffers to the Left" },
            { "<C-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<C-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
        },
        opts = {},
    },
}
