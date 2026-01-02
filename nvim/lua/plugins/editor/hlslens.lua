return {
    {
        "kevinhwang91/nvim-hlslens",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        keys = {
            {
                "n",
                mode = "n",
                "<CMD>execute('normal! ' . v:count1 . 'n')<CR><CMD>lua require('hlslens').start()<CR>",
                { noremap = true, silent = true },
            },
            {
                "N",
                mode = "n",
                "<CMD>execute('normal! ' . v:count1 . 'N')<CR><CMD>lua require('hlslens').start()<CR>",
                { noremap = true, silent = true },
            },
            { "*", mode = "n", "*<CMD>lua require('hlslens').start()<CR>", { noremap = true, silent = true } },
            { "#", mode = "n", "#<CMD>lua require('hlslens').start()<CR>", { noremap = true, silent = true } },
            { "g*", mode = "n", "g*<CMD>lua require('hlslens').start()<CR>", { noremap = true, silent = true } },
            { "g#", mode = "n", "g#<CMD>lua require('hlslens').start()<CR>", { noremap = true, silent = true } },
        },
    },
}
