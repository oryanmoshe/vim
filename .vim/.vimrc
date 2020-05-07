runtime configs/coc.vim
runtime configs/persistant_undo.vim

" Remaps
runtime configs/remaps/

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

let mapleader = ','


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


nnoremap U <nop>
nnoremap US :G<cr>
nnoremap UB :Gblame<cr>
nnoremap UP :Gpush<cr>

nnoremap ,u :UndotreeToggle<cr>:UndotreeFocus<cr>

nnoremap ,t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


set directory^=$HOME/.vim/tmp//

set nocompatible              " be iMproved, required
filetype plugin on                  " required

set ttimeoutlen=10

if (has("termguicolors"))
  set termguicolors
endif

set rtp+=/usr/local/opt/fzf

" Put your non-Plugin stuff after this line
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_fixers = { 'javascript': ['eslint'] }

let g:coverage_json_report_path = 'coverage/coverage-final.json'
let g:coverage_sign_covered = '⦿'
let g:coverage_interval = 100
let g:coverage_show_covered = 0
let g:coverage_show_uncovered = 1

set cursorline
set title
set autoread
set noshowmode

"Setting misc settings"
syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4
set smartindent
set ignorecase
set smartcase
set relativenumber
set wildmenu
set number
set list
set listchars=tab:?\ ,trail:.


" Palenight
let g:material_theme_style='palenight'
set background=dark
colorscheme material




map <C-y> :NERDTreeToggle<CR>


"Mapping splitting settings"
set splitbelow
set splitright

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
au GUIEnter * simalt ~x

"set lines=34
"set columns=150
set encoding=utf-8
"if has('gui_running')
  "set guifont=ProggyCleanTT:h16:cANSI
"  set guifont=DejaVu_Sans_Mono_for_Powerline:h16:cANSI
"   set guifont=Anonymice_Powerline:h14:cANSI
"endif
set laststatus=2
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline_extensions = []
"let g:airline_highlighting_cache = 1

let g:bufferline_active_buffer_left=''
let g:bufferline_active_buffer_right=''
"
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

set cmdheight=1

" Enable heavy omni completion.

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
hi Normal guibg=NONE ctermbg=NONE
