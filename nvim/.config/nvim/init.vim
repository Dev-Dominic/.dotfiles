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

" Surround 
Plug 'tpope/vim-surround'

" MISC Plugins
Plug 'Raimondi/delimitMate' " Autocompletes brackets, quotes and parenthesis

call plug#end()

" Leader key 
let mapleader = ","

" Disable autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Indentation
set tabstop=4 
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Line numbers
set number
set relativenumber

" Setting colorscheme
colorscheme gruvbox
highlight Normal ctermbg=none

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
    "'Ignored'   : '☒',
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
