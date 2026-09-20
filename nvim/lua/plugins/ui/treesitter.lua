return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        branch = "main",
        build = ":TSUpdate",
        init = function()
            local ensureInstalled = {
                "bash",
                "c",
                "cpp",
                "c_sharp",
                "diff",
                "go",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "luadoc",
                "luap",
                "make",
                "markdown",
                "markdown_inline",
                "php",
                "printf",
                "python",
                "query",
                "regex",
                "hcl",
                "terraform",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            }
            local alreadyInstalled = require("nvim-treesitter.config").get_installed()
            local parsersToInstall = vim.iter(ensureInstalled)
                :filter(function(parser)
                    return not vim.tbl_contains(alreadyInstalled, parser)
                end)
                :totable()
            require("nvim-treesitter").install(parsersToInstall)
        end,
    },
}
