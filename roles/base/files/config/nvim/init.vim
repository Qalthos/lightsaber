set runtimepath^=~/.vim+=~/.vim/after
let &packpath = &runtimepath
set autoindent
set smartindent
set textwidth=160

" Set sensible tabbing defaults
au BufNewFile,BufRead *.py,*.rst set tabstop=4 shiftwidth=4 expandtab
au BufNewFile,BufRead *.css,*.html,*.js,*.yaml,*.yml set tabstop=2 shiftwidth=2 expandtab

" Unmap <F1>
:map <F1> <Esc>
:imap <F1> <Esc>

filetype plugin indent on
syntax on
set foldmethod=syntax

" vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'konfekt/fastfold'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/simpylfold'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:coc_filetype_map = {
  \ 'yaml.ansible': 'ansible',
  \ }

" colorschemes
colorscheme Tomorrow-Night-Bright
"colorscheme badwolf
let g:airline_theme='badwolf'
