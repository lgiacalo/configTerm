set nocompatible
set number
set mouse=a
set smartindent
set autoindent
set ruler
syntax on 
set noerrorbells
set visualbell
set incsearch 
set scrolloff=3 
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
if has("autocmd")
	autocmd! bufwritepost .vimrc source ~/.vimrc
endif
execute pathogen#infect()
"NERDTree ( https://github.com/pendulm/nerdtree )
noremap <C-n> :NERDTree<CR>
"    "BONUS: active NERDTree si on utilise pas d'argument pour ouvrir vim
autocmd VimEnter * if !argc() | NERDTree | endif
