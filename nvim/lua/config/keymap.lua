local map = vim.api.nvim_set_keymap

-- jjでノーマルモードに戻る
map('i', 'jj', '<Esc>', {noremap = true, silent = true})

-- USキーボード用
map('n', ';', ':', {noremap = true})
map('n', ':', ';', {noremap = true})
map('v', ';', ':', {noremap = true})
map('v', ':', ';', {noremap = true})

-- ウィンドウ操作系
map('n', '<Leader>\\', ':vs<CR>', {noremap = true, silent = true})
map('n', '<Leader>-', ':sp<CR>', {noremap = true, silent = true})
map('n', '<Leader>h', '<C-w>h', {noremap = true, silent = true})
map('n', '<Leader>j', '<C-w>j', {noremap = true, silent = true})
map('n', '<Leader>k', '<C-w>k', {noremap = true, silent = true})
map('n', '<Leader>l', '<C-w>l', {noremap = true, silent = true})

-- 移動系
map('n', 'H', '^', {noremap = true})
map('n', 'L', '$', {noremap = true})

-- フォーマット系
map('n', '>', '>>', {noremap = true})
map('n', '<', '<<', {noremap = true})
