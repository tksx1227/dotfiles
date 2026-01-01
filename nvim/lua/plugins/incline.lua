return {
    {
        "b0o/incline.nvim",
        event = "VeryLazy",
        config = function()
            local colors = require("tokyonight.colors").setup()

            require("incline").setup({
                highlight = {
                    groups = {
                        InclineNormal = { guibg = colors.bg_dark1, guifg = colors.green1 },
                        InclineNormalNC = { guibg = colors.bg_dark1, guifg = colors.terminal_black },
                    },
                },
                window = {
                    options = {
                        winblend = 0,
                    },
                    placement = {
                        horizontal = "right",
                        vertical = "top",
                    },
                    margin = { horizontal = 0, vertical = 0 },
                    padding = 2,
                },
                render = function(props)
                    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    local modified = vim.bo[props.buf].modified and "bold,italic" or "bold"

                    local function get_diagnostic_label()
                        local icons = { error = "󰅚 ", warn = "󰀪 ", hint = "󰌶 ", info = " " }
                        local label = {}

                        for severity, icon in pairs(icons) do
                            local n = #vim.diagnostic.get(
                                props.buf,
                                { severity = vim.diagnostic.severity[string.upper(severity)] }
                            )
                            if n > 0 then
                                table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
                            end
                        end
                        if #label > 0 then
                            table.insert(label, { "┊ " })
                        end
                        return label
                    end

                    local buffer = {
                        { get_diagnostic_label() },
                        { filename .. " ", gui = modified },
                        {
                            vim.bo[props.buf].modified and " ●" or "",
                            guifg = props.focused and colors.orange or colors.black,
                        },
                    }
                    return buffer
                end,
            })
        end,
    },
}
