local map = vim.api.nvim_set_keymap

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

-- タブ操作系
map('n', '<C-l>', 'gt', { noremap = true })
map('n', '<C-h>', 'gT', { noremap = true })

-- 移動系 map('n', 'j', 'gj', { noremap = true })
map('n', 'k', 'gk', { noremap = true })
map('n', 'GG', 'G', { noremap = true, silent = true })

-- フォーマット系
map('n', '>', '>>', { noremap = true })
map('n', '<', '<<', { noremap = true })

-- スクロール系
map('n', '<C-j>', '<C-e>', { noremap = true })
map('n', '<C-k>', '<C-y>', { noremap = true })

-- １文字削除でヤンクしない
map('n', 'x', '"_x', { noremap = true })

-- [git]
map('n', 'G', '<Nop>', { noremap = true, silent = true })
map('n', '[git]', '<Nop>', { noremap = true, silent = true })
map('n', 'G', '[git]', {})
