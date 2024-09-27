return {
    {
        "kevinhwang91/nvim-hlslens",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        keys = {
            { "n", mode = "n", "<cmd>execute('normal! ' . v:count1 . 'n')<cr><cmd>lua require('hlslens').start()<cr>" },
            { "N", mode = "n", "<cmd>execute('normal! ' . v:count1 . 'N')<cr><cmd>lua require('hlslens').start()<cr>" },
            { "*", mode = "n", "*<cmd>lua require('hlslens').start()<cr>" },
            { "#", mode = "n", "#<cmd>lua require('hlslens').start()<cr>" },
            { "g*", mode = "n", "g*<cmd>lua require('hlslens').start()<cr>" },
            { "g#", mode = "n", "g#<cmd>lua require('hlslens').start()<cr>" },
        },
    },
}
