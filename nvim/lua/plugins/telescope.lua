return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            -- find
            { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (cwd)" },
            { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
        },
        opts = function()
            local actions = require("telescope.actions")

            return {
                defaults = {
                    prompt_prefix = " ",
                    selection_caret = " ",
                    preview = {
                        filesize_limit = 0.1, -- MB
                    },
                    mappings = {
                        i = {
                            ["<C-u>"] = false,
                            ["<C-d>"] = false,
                            ["<C-f>"] = actions.preview_scrolling_down,
                            ["<C-b>"] = actions.preview_scrolling_up,
                            ["<C-h>"] = "which_key",
                        },
                        n = {
                            ["q"] = actions.close,
                            ["<C-h>"] = "which_key",
                        },
                    },
                },
            }
        end,
    },
}
