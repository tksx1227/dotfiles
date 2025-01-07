return {
    {
        "ysmb-wtsg/in-and-out.nvim",
        event = "VeryLazy",
        keys = {
            {
                "<C-l>",
                function()
                    require("in-and-out").in_and_out()
                end,
                mode = "i",
            },
        },
    },
}
