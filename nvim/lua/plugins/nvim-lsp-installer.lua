local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local opts = { noremap = true, silent = true }
    buf_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
    -- buf_set_keymap('n', '?', ':lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', 'g?', ':lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<Leader>wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<Leader>wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<Leader>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<Leader>D', ':lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<Leader>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<Leader>a', ':lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<Leader>e', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<Leader>q', ':lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<Leader>f', ':lua vim.lsp.buf.formatting()<CR>', opts)

    require 'illuminate'.on_attach(client)
end

local server_configs = {
    ['sumneko_lua'] = {
        settings = {
            Lua = {
                workspace = {
                    preloadFileSize = 500,
                },
                telemetry = { enable = false },
                diagnostics = {
                    globals = { 'vim' }
                }
            },
        },
    },
}

require('nvim-lsp-installer').on_server_ready(function(server)
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

    local opts = {
        on_attach = on_attach,
        capabilities = capabilities
    }

    if server_configs[server.name] then
        opts = vim.tbl_deep_extend('force', opts, server_configs[server.name])
    end

    server:setup(opts)
    vim.cmd([[ do User LspAttachBuffers ]])
end)

vim.opt.completeopt = 'menu,menuone,noselect'
