local config = {
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
        },
    },
    virtual_text = true,
    virtual_lines = false,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
}
vim.diagnostic.config(config)

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        if client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
        end

        local bufnr = args.buf
        local opts = { buffer = bufnr, silent = true }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
    end,
})

vim.lsp.enable({
    "lua_ls", -- Lua
    "gopls", -- Go
    -- "jsonls", -- JSON
    -- "pylsp", -- Python
    -- "laravel_ls", -- PHP (Laravel)
    -- "nextls", -- Next.js (JavaScript/TypeScript)
    -- "nginx_language_server", -- Nginx
    -- "sqls", -- SQL
    "terraformls", -- Terraform
    -- "textlsp", -- Plain Text
    -- "markdown_oxide", -- Markdown
    "docker_language_server", -- Dockerfile
    "docker_compose_language_service", -- Docker Compose
})
