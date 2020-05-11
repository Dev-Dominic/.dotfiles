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
" :MarkdownPreview

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}  

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
set colorcolumn=81
set tw=80

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
"let g:mkdp_browser = 'brave'
let g:mkdp_browser = 'qutebrowser'
let g:mkdp_port = '9000'
noremap <leader>pm :MarkdownPreviewToggle<CR>

" COC.NVIM config 

""""""""""""""""""
" JUST ADDED 
""""""""""""""""""

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
" set nobackup
" set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

""""""""""""""""""
" JUST ADDED END
""""""""""""""""""

" Python config
let g:python3_host_prog = '~/.linux_config/.dotfiles/nvim/.config/nvim/py-venv-config/bin/python'

