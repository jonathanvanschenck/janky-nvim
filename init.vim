" Plugins
call plug#begin("~/.config/nvim/plugged")

Plug 'preservim/nerdtree'

Plug 'Yggdroot/indentLine'

Plug 'ojroques/vim-oscyank'

let g:polyglot_disabled = ['markdown']
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'


Plug 'github/copilot.vim'

call plug#end()


" Views
syntax on
color mp-hack
filetype off
set number
set relativenumber
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set nohlsearch

" Folds
set foldmethod=indent
set foldlevelstart=99

" Copying
set clipboard=unnamedplus
nmap <leader>c <Plug>OSCYankOperator
vmap <leader>c <Plug>OSCYankVisual
let g:oscyank_max_length = 0  " maximum length of a selection
let g:oscyank_silent     = 1  " disable message on successful copy
let g:oscyank_trim       = 0  " trim surrounding whitespaces before copy
let g:oscyank_osc52      = "\x1b]52;c;%s\x07"  " the OSC52 format string to use
autocmd TextYankPost *
    \ if v:event.operator is 'y' && v:event.regname is '' |
    \ execute 'OSCYankRegister ' |
    \ endif

" Indenting
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
function g:SetTabs( value )
  execute printf("setlocal shiftwidth=%d", a:value)
  execute printf("setlocal softtabstop=%d", a:value)
endfunction
nnoremap <leader>st4 :call g:SetTabs(4)<CR>
nnoremap <leader>st2 :call g:SetTabs(2)<CR>
let g:indentLine_color_term = 239
let g:indentLine_char = '▏'
let g:vim_json_conceal=0

" Brackets
let s:matching_bracket = {
    \  "(" : ")",
    \  "{" : "}",
    \  "[" : "]",
    \ }
function g:OpenBrackets()
  let l:char = getline('.')[col('.')-1]
  if ((match(l:char, "\[]})\]") > -1) || (match(l:char, "\[[{(\]") > -1))
    execute printf("normal ci%s\<CR>\<ESC>", l:char)
    " execute ":<"
    execute "normal O "
  else
    return
  endif
  execute ":startreplace"
endfunction
" mnemonic "Bracket Open"
nnoremap <C-b> :call<space>g:OpenBrackets()<CR>
inoremap <C-b> <ESC>:call<space>g:OpenBrackets()<CR>

" Comments
source ~/.config/nvim/scripts/vcomments.vim
" For some reason, '<C-_>' is 'ctrl+/'
nnoremap <C-_> :call ToggleComment(0)<CR>
inoremap <C-_> <esc> :call ToggleComment(0)<CR>gi
xnoremap <C-_> <esc> :call ToggleComment(1)<CR>


" Spelling
autocmd FileType latex setlocal spell spelllang=en_us
autocmd FileType markdown setlocal spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline


" Tab complete and searching
set path+=**
set wildignore+=*/.git/*,*/node_modules/*,*/env/*,*.swp,*.zip,*.so,*/tmp/*
set wildmenu
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_map = '<c-f>'
" let g:ackgrp = 'ag --vimgrep'
nnoremap <Leader>ag :Ack!<Space>

" Highlighing
let g:javascript_plugin_jsdoc = 1
let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1


" Nerdtree
let g:NERDTreeWinSize=25
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
autocmd BufWinEnter * silent NERDTreeMirror
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" stop sql plugin from remaping <C-c>
let g:ftplugin_sql_omni_key = '<C-q>'


" Corrections
nmap <C-T> :tabe
" Screen motion - move faster
noremap <C-e> 10<C-e>
noremap <C-y> 10<C-y>
" Split screen (Why is this not the default?!)
set splitright
set splitbelow
" Simplify split navigation
noremap <C-J> <C-W><C-J>
noremap <C-H> <C-W><C-H>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
" Simplify split resizing
noremap <C-LEFT> <C-W><
noremap <C-RIGHT> <C-W>>
noremap <C-UP> <C-W>+
noremap <C-DOWN> <C-W>-
" In visual line mode, it is easy to press J not j,
"  but J is irritatingly maped to "join lines",
"  which is almost never what I want to do. So just
"  map J to j in visual mode. If I want to "join lines"
"  I can just use gJ in visual mode which does the same
"  thing. Even better, you don't even need to be in visual
"  mode to gJ!
vnoremap J j
vnoremap K k

nnoremap <leader>b o<ESC>!!bsw

