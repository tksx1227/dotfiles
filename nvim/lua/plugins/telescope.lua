return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            -- find
            { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
            { "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=false<cr>", desc = "Find Files (cwd)" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep (cwd)" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
            { "<leader>fw", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Fuzzy Find Words" },
        },
        opts = function()
            local actions = require("telescope.actions")
            local layout = require("telescope.actions.layout")

            return {
                defaults = {
                    prompt_prefix = " ",
                    selection_caret = " ",
                    preview = {
                        filesize_limit = 0.1, -- MB
                        hide_on_startup = true,
                    },
                    mappings = {
                        i = {
                            ["<C-u>"] = false,
                            ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
                            ["<C-f>"] = actions.preview_scrolling_down,
                            ["<C-b>"] = actions.preview_scrolling_up,
                            ["<C-h>"] = "which_key",
                            ["<Tab>"] = layout.toggle_preview,
                        },
                        n = {
                            ["q"] = actions.close,
                            ["<C-h>"] = "which_key",
                            ["<C-p>"] = actions.move_selection_previous,
                            ["<C-n>"] = actions.move_selection_next,
                            ["<Tab>"] = layout.toggle_preview,
                        },
                    },
                    vimgrep_arguments = {
                        "rg",
                        "--hidden", -- Search hidden files
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                    },
                    file_ignore_patterns = {
                        "^.git/",
                        "^.cache",
                        "%.o",
                        "%.a",
                        "%.out",
                    },
                },
            }
        end,
    },
}
