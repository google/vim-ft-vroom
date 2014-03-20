if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = 'setlocal formatoptions< tabstop< shiftwidth<' .
    \ ' softtabstop< expandtab< autoindent< iskeyword< comments< commentstring<'

setlocal formatoptions-=t

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal autoindent

" To allow tag lookup and autocomplete for whole autoload functions, '#' must be
" a keyword character. This also conforms to the behavior of ftplugin/vim.vim.
setlocal iskeyword+=#

" Vroom files have no comments (text is inert documentation unless indented).
setlocal comments=
setlocal commentstring=
