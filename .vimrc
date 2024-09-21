call plug#begin('~/.vim/plugged')

" tema
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'AlessandroYorba/Alduin'
Plug 'crusoexia/vim-monokai'
Plug 'arzg/vim-colors-xcode'
Plug 'deathlyfrantic/vim-distill'
Plug 'franbach/miramare'
Plug 'tomasr/molokai'
Plug 'elvessousa/sobrio'
Plug 'ayu-theme/ayu-vim'
Plug 'cocopon/iceberg.vim'

Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
Plug 'ObserverOfTime/coloresque.vim'
Plug 'bling/vim-bufferline'
call plug#end()

" config tema
let g:jellybeans_overrides = {
\    'background': { 'guibg': '0b0b0b' },
\}
let ayucolor="dark"
let g:gruvbox_contrast_dark = 'hard'

set termguicolors
set background=dark
colorscheme jellybeans
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=#434343 guifg=NONE

"configs basicas vim
set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8
set shiftwidth=2
set tabstop=2

"mapeamento
map <C-q> :quit<CR>
map <C-s> :write<CR>
map <C-a> ggVG<CR>
map <C-\> :terminal<CR>
map <C-h> :bprev<CR>
map <C-l> :bnext<CR>

" youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:ycm_clangd_args=['--header-insertion=never']

" Utilsnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Airline
let g:airline_theme = 'apprentice'
"let g:airline_theme = 'iceberg'
"let g:airline_theme = 'gruvbox'
" powerline symbols
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'


"bufferline
let g:bufferline_echo = 1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_show_bufnr = 1

"ale
let g:ale_enabled = 1

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_sign_info = 'I'

let g:ale_keep_list_window_open = 1  
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
    \ 'cpp': ['cppcheck', 'gcc'],
		\ 'c': ['cppcheck', 'gcc'],
		\ 'java': ['javac'],
    \ }

