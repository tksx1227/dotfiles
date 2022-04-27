local g = vim.g
local map = vim.api.nvim_set_keymap

-- スペースをleaderにする
g.mapleader = ' '

-- jjでノーマルモードに戻る
map('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- USキーボード用
map('n', ';', ':', { noremap = true })
map('n', ':', ';', { noremap = true })
map('v', ';', ':', { noremap = true })
map('v', ':', ';', { noremap = true })

-- ウィンドウ操作系
map('n', '<Leader>\\', ':vs<CR>', { noremap = true, silent = true })
map('n', '<Leader>-', ':sp<CR>', { noremap = true, silent = true })
map('n', '<Leader>h', '<C-w>h', { noremap = true, silent = true })
map('n', '<Leader>j', '<C-w>j', { noremap = true, silent = true })
map('n', '<Leader>k', '<C-w>k', { noremap = true, silent = true })
map('n', '<Leader>l', '<C-w>l', { noremap = true, silent = true })

-- 移動系
map('n', 'H', '^', { noremap = true })
map('n', 'L', '$', { noremap = true })
map('n', 'j', 'gj', { noremap = true })
map('n', 'k', 'gk', { noremap = true })
map('n', 'gj', 'j', { noremap = true, silent = true })
map('n', 'gk', 'k', { noremap = true, silent = true })
map('n', 'ggk', 'gg', { noremap = true, silent = true })
map('n', 'ggj', 'G', { noremap = true, silent = true })

-- フォーマット系
map('n', '>', '>>', { noremap = true })
map('n', '<', '<<', { noremap = true })

-- スクロール系
map('n', '<C-j>', '<C-e>', { noremap = true })
map('n', '<C-k>', '<C-y>', { noremap = true })

-- x, d, pでヤンクしない
map('n', 'x', '"_x', { noremap = true })
map('n', 'd', '"_d', { noremap = true })
map('n', 'dd', '"_dd', { noremap = true, silent = true })
map('v', 'd', '"_d', { noremap = true })
map('n', 'D', 'd', { noremap = true })
map('n', 'dD', 'dd', { noremap = true, silent = true })
map('n', 'Dd', 'dd', { noremap = true, silent = true })
map('n', 'DD', 'dd', { noremap = true, silent = true })
map('v', 'D', 'd', { noremap = true })

-- [git]
map('n', 'G', '<Nop>', { noremap = true, silent = true })
map('n', '[git]', '<Nop>', { noremap = true, silent = true })
map('n', 'G', '[git]', {})

-- [lsp]
map('n', "'", '<Nop>', { noremap = true, silent = true })
map('n', '[lsp]', '<Nop>', { noremap = true, silent = true })
map('n', "'", '[lsp]', {})

-------------------------------------------------
-- Plugins
local opt = { noremap = true, silent = true }

-- bufferline
map('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', opt)
map('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', opt)
map('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', opt)
map('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', opt)
map('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', opt)
map('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', opt)
map('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', opt)
map('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', opt)
map('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', opt)
map("n", "<Leader>b", ":BufferLinePick<CR>", opt)
map("n", "<Leader>c", ":BufferLinePickClose<CR>", opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "@", ":BufferLineMovePrev<CR>", opt)
map("n", "#", ":BufferLineMoveNext<CR>", opt)

-- hop
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

-- lspsaga
map('n', '[lsp]r', ':Lspsaga rename<cr>', opt)
map('n', 'M', ':Lspsaga code_action<cr>', opt)
map('x', 'M', ':<c-u>Lspsaga range_code_action<cr>', opt)
map('n', '?', ':Lspsaga hover_doc<cr>', opt)
map('n', '[lsp]o', ':Lspsaga show_line_diagnostics<cr>', opt)
map('n', '[lsp]j', ':Lspsaga diagnostic_jump_next<cr>', opt)
map('n', '[lsp]k', ':Lspsaga diagnostic_jump_prev<cr>', opt)
map('n', '<C-b>', ':lua require("lspsaga.action").smart_scroll_with_saga(-1)<cr>', opt)
map('n', '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<cr>', opt)

-- luasnip
map('i', '<C-Down>', '<Plug>luasnip-next-choice', {})
map('s', '<C-Down>', '<Plug>luasnip-next-choice', {})

-- neo-tree
map('n', '<C-g>n', ':Neotree<CR>', opt)
map('n', '<C-g>b', ':Neotree buffers<CR>', opt)
map('n', '<C-g>g', ':Neotree git_status<CR>', opt)
map('n', '\\', ':Neotree reveal<cr>', opt)

-- nvim-hlslens
map('n', 'n', [[:execute('normal! ' . v:count1 . 'n')<CR>:lua require('hlslens').start()<CR>]], opt)
map('n', 'N', [[:execute('normal! ' . v:count1 . 'N')<CR>:lua require('hlslens').start()<CR>]], opt)
map('n', '*', [[*:lua require('hlslens').start()<CR>]], opt)
map('n', 'g*', [[g*:lua require('hlslens').start()<CR>]], opt)
map('n', '<Leader>0', ':noh<CR>', opt)

-- telescope
map('n', '<Leader>ff', ':lua require("telescope.builtin").find_files()<cr>', opt)
map('n', '<Leader>fg', ':lua require("telescope.builtin").live_grep()<cr>', opt)
map('n', '<Leader>fb', ':lua require("telescope.builtin").buffers()<cr>', opt)
map('n', '<Leader>fh', ':lua require("telescope.builtin").help_tags()<cr>', opt)
map('n', '<leader><leader>', ':lua require("telescope").extensions.frecency.frecency()<CR>', opt)

-- trouble
map('n', '<leader>xx', ':Trouble<cr>', opt)
map('n', '<leader>xw', ':Trouble workspace_diagnostics<cr>', opt)
map('n', '<leader>xd', ':Trouble document_diagnostics<cr>', opt)
map('n', '<leader>xl', ':Trouble loclist<cr>', opt)
map('n', '<leader>xq', ':Trouble quickfix<cr>', opt)
map('n', 'gR', ':Trouble lsp_references<cr>', opt)

-- neogit
map("n", "[git]d", ":Neogit<CR>", opt)
