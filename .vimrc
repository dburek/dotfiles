call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

call plug#end()

" general
filetype plugin indent on
syntax on
:set number

" Start NERDTree. If a file is specified, move the cursor to its window. 
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab. 
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" seoul256 (dark): "
" 	Range:   233 (darkest) ~ 239 (lightest) "
" 	Default: 237
let g:seoul256_background = 235
colo seoul256

" airline
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'LanguageClient'

