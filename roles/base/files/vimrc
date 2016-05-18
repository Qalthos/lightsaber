set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set expandtab

" Unmap <F1>
:map <F1> <Esc>
:imap <F1> <Esc>

:filetype on
:syntax on

:filetype indent on
set foldmethod=syntax

" colorscheme
set background=dark
"colorscheme vividchalk
colorscheme Tomorrow-Night

augroup BadWhitespace
  autocmd!
  autocmd BufRead,BufNewFile *.rst match BadWhitespace /*\t\*/
  autocmd BufRead,BufNewFile *.rst match BadWhitespace /\s\+$/
  autocmd BufRead,BufNewFile *.py match BadWhitespace /*\t\*/
  autocmd BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
augroup END
set textwidth=80
highlight BadWhitespace ctermbg=red guibg=red

" Automatic python folding
augroup python_prog
  autocmd!
  fun! Python_fold()
    execute 'syntax clear pythonStatement'
    execute 'syntax keyword pythonStatement break continue del'
    execute 'syntax keyword pythonStatement except exec finally'
    execute 'syntax keyword pythonStatement pass print raise'
    execute 'syntax keyword pythonStatement return try'
    execute 'syntax keyword pythonStatement global assert'
    execute 'syntax keyword pythonStatement lambda yield'
    execute 'syntax match pythonStatement /\<def\>/ nextgroup=pythonFunction skipwhite'
    execute 'syntax match pythonStatement /\<class\>/ nextgroup=pythonFunction skipwhite'
    execute 'syntax region pythonFold start="^\z(\s*\)\%(class\|def\)" end="^\%(\n*\z1\s\)\@!" transparent fold'
    execute 'syntax sync minlines=2000 maxlines=4000'
    "set foldopen=all foldclose=all
    set foldtext=substitute(getline(v:foldstart),'\\t','\ \ \ \ ','g')
    set fillchars=vert:\|,fold:-
    set tabstop=4 shiftwidth=4 guioptions+=b
  endfun
  autocmd FileType python call Python_fold()
augroup END
