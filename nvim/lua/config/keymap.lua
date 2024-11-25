local g = vim.g
local map = vim.api.nvim_set_keymap

-- ### Reference
-- n: Normal Mode
-- i: Insert Mode
-- x: Visual Mode
-- s: Select Mode
-- v: Visual and Select Mode (x + s)
-- o: Operator-pending Mode

-- スペースをleaderにする
g.mapleader = " "

-- jjでノーマルモードに戻る
map("i", "jj", "<Esc>", { noremap = true, silent = true })

-- USキーボード用
map("n", ";", ":", { noremap = true })
map("n", ":", ";", { noremap = true })
map("v", ";", ":", { noremap = true })
map("v", ":", ";", { noremap = true })

-- インクリメント、デクリメントを直感的にする
map("n", "+", "<C-a>", { noremap = true })
map("n", "-", "<C-x>", { noremap = true })

-- ウィンドウ操作系
map("n", "<Leader>\\", ":vs<CR>", { noremap = true, silent = true })
map("n", "<Leader>-", ":sp<CR>", { noremap = true, silent = true })
map("n", "<Leader>h", "<C-w>h", { noremap = true, silent = true })
map("n", "<Leader>j", "<C-w>j", { noremap = true, silent = true })
map("n", "<Leader>k", "<C-w>k", { noremap = true, silent = true })
map("n", "<Leader>l", "<C-w>l", { noremap = true, silent = true })

-- 移動系
map("n", "H", "^", { noremap = true })
map("o", "H", "^", { noremap = true })
map("v", "H", "^", { noremap = true })
map("n", "L", "$", { noremap = true })
map("o", "L", "$", { noremap = true })
map("v", "L", "$", { noremap = true })
map("n", "j", "gj", { noremap = true })
map("n", "k", "gk", { noremap = true })
map("n", "gj", "j", { noremap = true, silent = true })
map("n", "gk", "k", { noremap = true, silent = true })

-- x, d, pでヤンクしない
map("n", "x", '"_x', { noremap = true })
map("v", "x", '"_x', { noremap = true })
map("n", "X", '"_D', { noremap = true })
map("n", "d", '"_d', { noremap = true })
map("n", "dd", '"_dd', { noremap = true, silent = true })
map("v", "d", '"_d', { noremap = true })
map("n", "D", "d", { noremap = true })
map("n", "dD", "dd", { noremap = true, silent = true })
map("n", "Dd", "dd", { noremap = true, silent = true })
map("n", "DD", "dd", { noremap = true, silent = true })
map("v", "D", "d", { noremap = true })
map("x", "p", "P", { noremap = true })

-- 直感的にする系
map("o", "i<space>", "iW", { noremap = true })
map("x", "i<space>", "iW", { noremap = true })
map("o", 'a"', '2i"', { noremap = true })
map("o", "a'", "2i'", { noremap = true })
map("o", "a`", "2i`", { noremap = true })
map("x", 'a"', '2i"', { noremap = true })
map("x", "a'", "2i'", { noremap = true })
map("x", "a`", "2i`", { noremap = true })

-- 行を上下に移動する
map("n", "<C-k>", '$"<Cmd>move-1-{v:count1}<CR>=l"', { noremap = true, expr = true })
map("n", "<C-j>", '$"<Cmd>move+{v:count1}<CR>=l"', { noremap = true, expr = true })
map("x", "<C-k>", ":move'<-2<CR>gv=gv", { noremap = true, silent = true })
map("x", "<C-j>", ":move'>+1<CR>gv=gv", { noremap = true, silent = true })

-- <leader>0でハイライトを消す
map("n", "<leader>0", ":noh<cr>", { noremap = true, silent = true })
