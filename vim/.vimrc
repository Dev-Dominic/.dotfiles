" Vim Plugins
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'conornewton/vim-pandoc-markdown-preview'


" Dart Plugin
Plug 'dart-lang/dart-vim-plugin'

call plug#end()

" Setting vim numbering
set number
set relativenumber

" Setting indentation settings
set softtabstop=4
set tabstop=4
set shiftwidth=4
set smartindent
set autoindent

" Turning off autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" ColorScheme
colorscheme dracula

" lightline configuration
set laststatus=2
set noshowmode
set noshowcmd


" Nerd Tree config
map <C-n> :NERDTreeToggle<CR>


" Md Preview 
" Default Pdf previewer
let g:md_pdf_viewer="zathura" 
