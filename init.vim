:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set complete+=kspell
:set completeopt=menuone,longest

let mapleader=" "

call plug#begin()

Plug 'morhetz/gruvbox' " Theme
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'itchyny/lightline.vim' " Lightline
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Mega Directory
Plug 'https://github.com/voldikss/vim-floaterm' " Float Terminal!
Plug 'https://github.com/Yggdroot/indentLine' " Indent
Plug 'https://github.com/vim-syntastic/syntastic' "Error
Plug 'https://github.com/tpope/vim-surround' " Double
Plug 'https://github.com/mattn/emmet-vim' " *
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs' " ()
Plug 'alvan/vim-closetag' " <> </>
Plug 'janko-m/vim-test' " Test
Plug 'terryma/vim-multiple-cursors' " <-
Plug 'easymotion/vim-easymotion' "/O
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

set encoding=UTF-8

call plug#end()

" Theme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" NerdTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-1> :call COCActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarTogggle<CR>

:set completeopt-=preview

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Commands
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>x :x<CR>
" Split Resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><
" Testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
" Shorter Commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev find NERDTreeFind
" Plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
" Run Current File
nnoremap <Leader>z :!node %<cr>
" TAB BB
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
