return {
    {
        "rcarriga/nvim-notify",
        lazy = true,
        opts = {
            stages = "static",
            timeout = 3000,
            on_open = function(win)
                vim.api.nvim_win_set_config(win, { zindex = 100 })
            end,
        },
        init = function()
            vim.notify = require("notify")
        end,
    },
}
