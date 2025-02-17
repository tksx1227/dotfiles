return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = false,
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        },
        keys = {
            { "<C-g>n", mode = "n", ":Neotree toggle<cr>", desc = "Toggle Neotree" },
        },
        opts = {
            sources = { "filesystem", "buffers", "git_status" },
            open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
            filesystem = {
                bind_to_cwd = false,
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
            },
            window = {
                mappings = {
                    ["l"] = "open",
                    ["h"] = "close_node",
                    ["<space>"] = "none",
                    ["Y"] = {
                        function(state)
                            local node = state.tree:get_node()
                            local path = node:get_id()
                            vim.fn.setreg("+", path, "c")
                        end,
                        desc = "Copy Path to Clipboard",
                    },
                    ["P"] = { "toggle_preview", config = { use_float = false } },
                    ["s"] = "none",
                    ["S"] = "none",
                    ["-"] = "open_split",
                    ["\\"] = "open_vsplit",
                },
            },
            default_component_configs = {
                indent = {
                    with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
                git_status = {
                    symbols = {
                        unstaged = "󰄱",
                        staged = "󰱒",
                    },
                },
            },
            filesystem = {
                filtered_items = {
                    visible = true,
                    never_show = {
                        ".git",
                        ".DS_Store",
                        -- "thumbs.db",
                    },
                },
                follow_current_file = {
                    enabled = true,
                    leave_dirs_open = false,
                },
            },
        },
        config = function(_, opts)
            vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#0F0F30" })
            require("neo-tree").setup(opts)
        end,
    },
}
