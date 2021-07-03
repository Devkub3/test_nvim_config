set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set noshowmode
set background=dark

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' "tema
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
call plug#end()

"Configuracion plugins
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='gruvbox'
let g:user_emmet_mode='a'

"Mapeo teclas
let mapleader=" "
nmap <Leader>s <PLug>(easymotion-s2)
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Tabulacion para COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
