local set = vim.opt

---------------------------------------
-- Base
set.fenc = "utf8" -- 文字コードをUTF-8に設定
set.shell = "/bin/zsh" -- デフォルトのシェルをzshに設定
set.belloff = "all" -- ビープ音を消す
set.mouse = "a" -- マウスを有効化
set.clipboard = "unnamedplus,unnamed," .. vim.o.clipboard -- OSのクリップボードを使用する
set.updatetime = 300 -- アップデートを300msごとに行う
set.wildmenu = true -- コマンド補完を強化
set.wildmode = "longest,list,full" -- リスト表示，最長マッチ

---------------------------------------
-- Files
set.backup = false -- バックアップファイルを作らない
set.swapfile = false -- スワップファイルを作らない
set.autoread = true -- 編集中のファイルが変更されたら自動で読み込み直す
set.hidden = true -- バッファが編集中でもほかのファイルを開けるようにする

---------------------------------------
-- Appearance
set.title = true -- 編集中のファイル名を表示
set.number = true -- 行番号を表示
set.smartindent = true -- スマートインデントを有効化
set.showcmd = true -- 入力中のコマンドステータスを表示する
set.background = "dark" -- 背景をダークモードに設定
set.syntax = "on" -- シンタックスハイライトを有効化
set.termguicolors = true -- termguicolorsを有効化
set.signcolumn = "yes" -- 左にスペースを開ける
set.cursorline = true -- 行をハイライト
set.list = true -- スペースと改行を可視化
set.listchars:append("space:⋅")
set.listchars:append("eol:↴")
set.cmdheight = 0 -- cmdlineを非表示にする
set.laststatus = 0 -- ステータスラインを非表示
set.statusline = "─"
set.fillchars:append({ stl = "─", stlnc = "─" })

---------------------------------------
-- Indent
set.autoindent = true
set.smartindent = true
set.expandtab = true -- Tab文字を半角スペースにする
set.tabstop = 2 -- 行頭以外のTab文字の表示幅(スペースいくつ分)
set.shiftwidth = 2 -- 行頭でのTab文字の表示幅
set.softtabstop = 2
set.showtabline = 0
set.shiftround = true
set.winborder = "rounded"

---------------------------------------
-- Window
set.splitbelow = true -- 画面を下に分割
set.splitright = true -- 画面を右に分割

---------------------------------------
-- Search
set.ignorecase = true -- 検索文字が小文字の場合は大文字と小文字を区別しない
set.smartcase = true -- 検索文字に大文字がある場合は大文字と小文字を区別する
set.incsearch = true -- 検索文字列入力時に順次対象文字列にヒットさせる
set.wrapscan = true -- 最後まで行くと最初に戻る
set.hlsearch = true -- 検索語をハイライト表示

---------------------------------------
-- Fold
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldenable = false
