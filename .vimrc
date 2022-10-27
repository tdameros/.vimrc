call plug#begin()
	" Project tree
	Plug 'preservim/nerdtree'
	Plug 'tomasiser/vim-code-dark'
	Plug 'vim-syntastic/syntastic'
	Plug 'alexandregv/norminette-vim'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'preservim/nerdcommenter'
call plug#end()


"""""""""""""""""""""""""""""""""
" User interface
"""""""""""""""""""""""""""""""""

set encoding=UTF-8
" Activate syntax
syntax on
" Enable VScode colorscheme
colorscheme codedark
" Number line
set nu
set relativenumber
" Highlight column 81
set colorcolumn=81

"""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""

set clipboard=unnamedplus
" Ubuntu / Gnome : sudo apt install vim-gtk
" Mac : set clipboard=unnamed

"""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""
" Map the leader key to a comma.
let mapleader = ','
" Remap Esc to kj in insert mode and no recursive
inoremap kj <Esc>
" Remap : to ; in normal mode and no recursive
nnoremap ; :
" Remap Ctrl-w to uj for change window
nnoremap <C-w> <C-w>
" Remap NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Navigate in split window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Alias replace all with S
nnoremap S :%s//gI<Left><Left><Left>

"""""""""""""""""""""""""""""""""
" Indentation options
"""""""""""""""""""""""""""""""""

" Activate smart indentation
set smartindent
" Disable identation on new line
set noautoindent
set tabstop=4
set shiftwidth=4
" Disable converting tabs to spaces
set noexpandtab
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""
" Auto command
"""""""""""""""""""""""""""""""""

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Command for nerd commenter
filetype plugin on

"""""""""""""""""""""""""""""""""
" Variables
"""""""""""""""""""""""""""""""""

" Set variables for 42 Header
let g:user42 = 'tdameros'
let g:mail42 = 'tdameros@student.42lyon.fr'

set wildmode=longest,list,full
