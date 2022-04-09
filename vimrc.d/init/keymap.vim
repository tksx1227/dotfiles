" jjでノーマルモードに切り替える
inoremap <silent> jj <Esc>

" leaderをスペースに割り当てる
let mapleader = "\<Space>"

" USキーボード用
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" ウィンドウ操作系
nnoremap <silent> <Leader>\ :vs<CR>
nnoremap <silent> <Leader>- :sp<CR>
nnoremap <silent> <Leader>h <C-w>h
nnoremap <silent> <Leader>j <C-w>j
nnoremap <silent> <Leader>k <C-w>k
nnoremap <silent> <Leader>l <C-w>l

" 移動系
noremap H ^
noremap L $
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" NERDTree
noremap <C-n> :NERDTreeToggle<CR>
