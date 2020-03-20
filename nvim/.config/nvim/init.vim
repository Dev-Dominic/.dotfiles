" Plugins
call plug#begin()

" Auto Completion(Coc)
" Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi' " Python 
"Plug 'wokalski/autocomplete-flow' " Javascript
"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' } " PHP


" Snippet Autocompletion supplement
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets' " Language Snippet Repo

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


" Neovim bottom bar 
Plug 'bling/vim-airline'

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

" Autocompletion (doeplete)
"let g:deoplete#enable_at_startup = 1

"" PHP deoplete 
"let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
"let g:deoplete#ignore_sources.php = ['omni']

"" Language Snippets (neosnippet)
"let g:neosnippet#enable_completed_snippet = 1

"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)

"" SuperTab like snippets behavior.
"" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
""imap <expr><TAB>
"" \ pumvisible() ? "\<C-n>" :
"" \ neosnippet#expandable_or_jumpable() ?
"" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"" For conceal markers.
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif

" Language Snippets (end)

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
