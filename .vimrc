"configs basicas vim
set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8
set shiftwidth=2
set tabstop=2
set incsearch
set confirm
set clipboard=unnamedplus

"mapeamento
map <C-q> :quit<CR>
map <C-s> :write<CR>
map <C-a> ggVG<CR>
map <C-/> :terminal<CR>

call plug#begin()

" temas
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
Plug 'ayu-theme/ayu-vim'
Plug 'terroo/terroo-colors'
Plug 'tribela/vim-transparent'

call plug#end()


" config tema
let ayucolor="dark"
let g:gruvbox_contrast_dark = 'hard'

set termguicolors
set background=dark
colorscheme gruvbox
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=#434343 guifg=NONE
