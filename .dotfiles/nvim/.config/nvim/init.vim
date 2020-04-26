" Plugins
call plug#begin()

" Nerd Plugins
Plug 'scrooloose/nerdtree' " File Explorer
Plug 'scrooloose/nerdcommenter'    
Plug 'xuyuanp/nerdtree-git-plugin' 

" Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'

" Git 
Plug 'airblade/vim-gitgutter'

" Markdown Previews
Plug 'conornewton/vim-pandoc-markdown-preview' " Pandoc Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } } " Browser markdown preview

" Neovim bottom bar (lightline)
Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Allow for closing of delimiters
Plug 'cohama/lexima.vim'

" Css-coloring
Plug 'ap/vim-css-color'

" Goyo
Plug 'junegunn/goyo.vim'

" Language Plugins
Plug 'vim-scripts/indentpython.vim' " Proper python indentation
Plug 'ycm-core/YouCompleteMe' " Code-completion engine

call plug#end()

" Leader key 
let mapleader = ","

" Disable show mode
set noshowmode

" Disable autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Indentation and color column
set tabstop=4 
set shiftwidth=4
set expandtab " Converts tabs into spaces
set smartindent
set colorcolumn=80

" Line numbers
set number
set relativenumber

" Highlighting toggle
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" Lightline settings
let g:lightline = {
    \ 'colorscheme' : 'darcula',
    \}

" Setting colorscheme
"colorscheme gruvbox
colorscheme dracula
highlight Normal ctermbg=none

" Splits and Tabbed Files
set splitbelow splitright

" Navigating splits
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" NERD STUFF 
" NerdTree Config
noremap <leader>n :NERDTreeToggle<CR>

" NerdTree git plugin
"let g:NERDTreeIndicatorMapCustom = {
    ""Modified"  : "✹",
    ""Staged"    : "✚",
    ""Untracked" : "✭",
    ""Renamed"   : "➜",
    ""Unmerged"  : "═",
    ""Deleted"   : "✖",
    ""Dirty"     : "✗",
    ""Clean"     : "✔︎",
    ""Ignored"   : '☒',
    ""Unknown"   : "?"
"}

" NerdCommenter
" [count]<leader>c<space> NerdCommenter Toggle
" <leader>cA Append comment to current line
" <leader>ca Switches to alternative commenting delimiters

" Pandoc Markdown Preview 
let g:md_pdf_viewer="zathura" " Default Pdf previewer

" Markdown-Preview
let g:mkdp_browser = 'brave'
let g:mkdp_port = '9000'
noremap <leader>pm :MarkdownPreviewToggle<CR>

