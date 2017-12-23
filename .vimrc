syntax enable

" Use spaces instead of tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

set number " Show line numbers
set cursorline " Highlight current line
set incsearch " Search when typing
set title " Update terminal title
set ttimeoutlen=0 " Remove delay on <Esc>

filetype plugin indent on

"
" Plugins
"

source $HOME/.vim/plugins.vim

" onedark.vim
let g:onedark_color_overrides = {
\ "red": {"gui": "#d75faf", "cterm": "169", "cterm16": "5" },
\}
set background=dark
colorscheme onedark
set termguicolors

" lightline.vim
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
set laststatus=2
set noshowmode

" https://github.com/slim-template/vim-slim/issues/19
let g:polyglot_disabled = ['slim']

"
" Commands
"

" Clear the search pattern
command C let @/=""

"
" Keyboard mappings
"

let mapleader=" "

" Consistent undo-redo bindings
nnoremap <Leader>u :u<CR>
nnoremap <Leader>r <C-r> 

" Clipboard integration
vmap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>P "+P

" File navigation
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>j :GFiles<CR>
nnoremap <Leader>J :Files<CR>
nnoremap <Leader>g :Ag<CR>

" Tabs
nnoremap <silent> <A-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Center search results on the matching line
map N Nzz
map n nzz

" ...
nnoremap <Leader>A :BasmJumpToAddr 
nnoremap <silent> <Leader>a :call BasmPrintAddr()<CR>
nnoremap <silent> <Leader>w :call BasmJumpToLabel()<CR>
