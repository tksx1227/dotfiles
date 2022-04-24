local g = vim.g
local set = vim.opt

---------------------------------------
-- Base
g.mapleader = ' ' -- スペースをleaderにする
set.fenc = 'utf8' -- 文字コードをUTF-8に設定
set.shell = '/bin/zsh' -- デフォルトのシェルをbashに設定
set.belloff = 'all' -- ビープ音を消す
set.mouse = 'a' -- マウスを有効化
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
set.laststatus = 2 -- ステータスラインを常に表示
set.showcmd = true -- 入力中のコマンドステータスを表示する
set.background = 'dark' -- 背景をダークモードに設定
set.syntax = 'on' -- シンタックスハイライトを有効化
set.termguicolors = true -- termguicolorsを有効化
set.signcolumn = 'yes' -- 左にスペースを開ける
set.cursorline = true -- 行をハイライト
set.list = true -- スペースと改行を可視化
set.listchars:append("space:⋅")
set.listchars:append("eol:↴")

---------------------------------------
-- Tab
set.expandtab = false -- Tab文字を半角スペースにしない
set.tabstop = 4 -- 行頭以外のTab文字の表示幅(スペースいくつ分)
set.shiftwidth = 4 -- 行頭でのTab文字の表示幅

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
