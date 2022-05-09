set number
set mouse=a
syntax enable
set encoding=utf-8
set showmatch
set sw=4

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Status bar.
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" NERDTree
Plug 'preservim/nerdtree'
call plug#end()

" Statusbar colorscheme and info
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \     [ 'percent' ],
      \              [ 'gitbranch', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" NERDTREE config
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
autocmd BufEnter NERD_tree_* | execute 'normal R'
