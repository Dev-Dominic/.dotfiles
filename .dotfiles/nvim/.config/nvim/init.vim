" Plugins
call plug#begin()

" Nerd Plugins
Plug 'scrooloose/nerdtree' " File Explorer
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" DevIcons
Plug 'kyazdani42/nvim-web-devicons'

" Git
Plug 'airblade/vim-gitgutter'

" Markdown Previews
Plug 'conornewton/vim-pandoc-markdown-preview' " Pandoc Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" :MarkdownPreview

" Neovim bottom bar (lightline)
Plug 'itchyny/lightline.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'dracula/vim', {'name': 'dracula'}

" Allow for closing of delimiters
Plug 'cohama/lexima.vim'

" Css-coloring
Plug 'ap/vim-css-color'

" Language Plugins
Plug 'vim-scripts/indentpython.vim' " Proper python indentation
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'epilande/vim-es2015-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/loremipsum'
Plug 'jxnblk/vim-mdx-js'

" Highlights trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

" Get good at vim
Plug 'ThePrimeagen/vim-be-good'

" Startify
Plug 'mhinz/vim-startify'


call plug#end()

" Leader key
let mapleader = ","

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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
set textwidth=80
set wrap

" Set indentation for Javascript/Typescript/Json files
autocmd FileType javascript setlocal ts=2 sw=2 expandtab
autocmd FileType typescript setlocal ts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sw=2 expandtab


" Cursor line
set cursorline

" Line numbers
set number
set relativenumber

" Highlighting toggle
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" Lightline settings
let g:lightline = {
    \ 'colorscheme' : 'dracula',
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

" Navigating buffers
noremap <silent> <TAB>j :bprevious<CR>
noremap <silent> <TAB>k :bnext<CR>
noremap <silent> <TAB>l :bdelete<CR>

" NERD STUFF
" NerdTree Config
noremap <leader>n :NERDTreeToggle<CR>

" NerdCommenter
" [count]<leader>c<space> NerdCommenter Toggle
" <leader>cA Append comment to current line
" <leader>ca Switches to alternative commenting delimiters

" Pandoc Markdown Preview
let g:md_pdf_viewer="zathura" " Default Pdf previewer

" Markdown-Preview
"let g:mkdp_browser = 'brave'
"let g:mkdp_browser = 'qutebrowser'
let g:mkdp_browser = 'chromium'
let g:mkdp_port = '9000'
noremap <leader>pm :MarkdownPreview<CR>


""""""""""""""""""
" COC.NVIM config
"
" START
""""""""""""""""""
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint'
  \ ]

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
" VimEnter used to remap <TAB> completion after everything else has loaded, used
" to override <TAB> mappings from other plugins.
autocmd VimEnter * inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
autocmd VimEnter * inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
let g:UtilSnipsExpandTrigger = '<c-space>'

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.10/bin/python3'
""""""""""""""""""
" COC.NVIM config
"
" END
""""""""""""""""""

""""""""""""""""""""""""""""
"
" Typescript/Javascript
"
""""""""""""""""""""""""""""
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Treesiter Configuration
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" DevIcons Configuration
lua <<EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF
