return {
    {
        "WilliamHsieh/overlook.nvim",
        event = { "LspAttach" },
        opts = {
            ui = {
                size_ratio = 0.8,
            },
        },
        keys = {
            {
                "<leader>pd",
                function()
                    require("overlook.api").peek_definition()
                end,
                desc = "Overlook: Peek definition",
            },
            {
                "<leader>p-",
                function()
                    require("overlook.api").open_in_split()
                end,
                desc = "Overlook: Open popup in split",
            },
            {
                "<leader>p\\",
                function()
                    require("overlook.api").open_in_vsplit()
                end,
                desc = "Overlook: Open popup in vsplit",
            },

            {
                "<leader>pc",
                function()
                    require("overlook.api").close_all()
                end,
                desc = "Overlook: Close all popup",
            },
            {
                "<leader>pr",
                function()
                    require("overlook.api").restore_popup()
                end,
                desc = "Overlook: Restore popup",
            },
            {
                "<leader>pt",
                function()
                    require("overlook.api").open_in_tab()
                end,
                desc = "Overlook: Open popup in tab",
            },
            {
                "<leader>p<CR>",
                function()
                    require("overlook.api").open_in_original_window()
                end,
                desc = "Overlook: Open popup in current window",
            },
        },
    },
}
