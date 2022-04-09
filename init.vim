"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Install dir
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Required:
call dein#end()

" toml settings
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	" .toml files
	let s:rc_dir	= expand('~/.config/nvim/vimrc.d')
	if !isdirectory(s:rc_dir)
		call mkdir(s:rc_dir, 'p')
	endif
	let s:toml		= s:rc_dir . '/dein/dein.toml'
	let s:lazy_toml	= s:rc_dir . '/dein/dein_lazy.toml'

	" Load toml
	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	" Finish
	call dein#end()
	call dein#save_state()
endif

" プラグインの自動インストール
if dein#check_install()
	call dein#install()
endif

" プラグインの自動アンインストール
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
	call map(s:removed_plugins, "delete(v:val, 'rf')")
	call dein#recache_runtimepath()
endif

"End dein Scripts-------------------------

let files = split(glob('~/.config/nvim/vimrc.d/init/' . '*.vim'))

for file in files
	execute 'source' file
endfor
