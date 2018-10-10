" formative.vim - ClangFormat with text-objects
" Author: Fraser Cormack <frasercrmck@gmail.com>
" Version: 2.0
" License: This file is placed in the public domain.
" Source repository: https://github.com/frasercrmck/formative.vim

" Initialization {{{
if exists("g:loaded_formative") || &cp
  finish
endif

let g:loaded_formative = 1
" }}}

let g:fmtv_clang_format_py = get( g:, 'fmtv_clang_format_py', '~/.vim/clang-format.py')

nnoremap <silent> <Plug>FormativeNor :<C-U>set opfunc=formative#ClangFormat<CR>g@
nnoremap <silent> <Plug>FormativeLine :<C-U>call formative#ClangFormat('oneline')<CR>
nnoremap <silent> <Plug>FormativeFile :<C-U>call formative#ClangFormat('file')<CR>

vnoremap <silent> <Plug>FormativeVis :<C-U>call formative#ClangFormat(visualmode(), 1)<CR>
inoremap <silent> <Plug>FormativeIns <ESC>:<C-U>call formative#ClangFormat('oneline')<CR>a

if !exists("g:fmtv_no_mappings") || ! g:fmtv_no_mappings
  nmap <C-k> <Plug>FormativeNor
  vmap <C-k> <Plug>FormativeVis
  imap <C-k> <Plug>FormativeIns

  nmap <C-k>k <Plug>FormativeLine
  nmap <C-k>u <Plug>FormativeFile
endif
