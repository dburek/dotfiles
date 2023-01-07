call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
"Plug 'junegunn/vim-easy-align'
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'

call plug#end()

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
