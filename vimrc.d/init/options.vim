"-----------------------------------
" Base
"-----------------------------------
set fenc=utf8 " 文字コードをUTF-8に設定
set shell=/bin/zsh " デフォルトのシェルをbashに設定
set nobackup " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
set autoread " 編集中のファイルが変更されたら自動で読み込み直す
set hidden " バッファが編集中でもほかのファイルを開けるようにする
set vb t_vb= " ビープ音を消す
set list " タブ、空白、改行を表示
set title " 編集中のファイル名を表示
set mouse=a " マウスを有効化
set clipboard=unnamed " クリップボードを共有する
set updatetime=300 " アップデートを300msごとに行う

"-----------------------------------
" Visual
"-----------------------------------
set number " 行番号を表示
set smartindent " スマートインデントを有効化
set laststatus=2 " ステータスラインを常に表示
set backspace=2 " バックスペースを有効化
set showcmd " 入力中のコマンドステータスを表示する
set background=dark " 背景をダークモードに設定
syntax on " シンタックスハイライトを有効化
colorscheme iceberg

"-----------------------------------
" Tab
"-----------------------------------
set noexpandtab " Tab文字を半角スペースにしない
set tabstop=4 " 行頭以外のTab文字の表示幅(スペースいくつ分)
set shiftwidth=4 " 行頭でのTab文字の表示幅

"-----------------------------------
" Search
"-----------------------------------
set ignorecase " 検索文字が小文字の場合は大文字と小文字を区別しない
set smartcase " 検索文字に大文字がある場合は大文字と小文字を区別する
set incsearch " 検索文字列入力時に順次対象文字列にヒットさせる
set wrapscan " 最後まで行くと最初に戻る
set hlsearch " 検索語をハイライト表示
