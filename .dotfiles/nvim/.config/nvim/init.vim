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

" Language Plugins
Plug 'vim-scripts/indentpython.vim' " Proper python indentation
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vimwiki
Plug 'vimwiki/vimwiki'

" Highlights trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

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
set textwidth=80
set wrap

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
let g:mkdp_browser = 'qutebrowser'
let g:mkdp_port = '9000'
noremap <leader>pm :MarkdownPreview<CR>


""""""""""""""""""
" COC.NVIM config
"
" START
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


let g:python3_host_prog = expand("~/.linux_config/.dotfiles/nvim/.config/nvim/venv/bin/python") "
""""""""""""""""""
" COC.NVIM config
"
" END
""""""""""""""""""

