"
" Plugins
"

" Get vim-plug if it's not installed yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'joshdick/onedark.vim'

" Syntax higlighting
Plug 'sheerun/vim-polyglot'

" Statusline
Plug 'itchyny/lightline.vim'

" Toggle between hybrid and absolute line numbers
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Motions
Plug 'justinmk/vim-sneak'

" File navigation
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" FS operations
Plug 'tpope/vim-eunuch'

call plug#end()
