" formative.vim - ClangFormat with text-objects
" Author: Fraser Cormack <frasercrmck@gmail.com>
" Version: 1.3
" License: This file is placed in the public domain.
" Source repository: https://github.com/frasercrmck/formative.vim

" Initialization {{{
if !exists("g:loaded_formative") || &cp
  finish
endif

let s:cpo_save = &cpo
set cpo&vim
" }}}

" Functions {{{
function! formative#ClangFormat(type, ...)
  if a:0                     " Invoked from Visual mode
    let s:beg = "'<"
    let s:end = "'>"
  elseif a:type == 'file'    " Invoked on the whole file
    let s:beg = "1"
    let s:end = "$"
  elseif a:type == 'oneline' " Invoked on one line only
    let s:beg = "."
    let s:end = "."
  else                       " Invoked from Normal mode
    let s:beg = "'["
    let s:end = "']"
  endif

  " Now do the formatting between the two markers
  silent execute "normal! :".s:beg.",".s:end . "pyf ".g:fmtv_clang_format_py."\<CR>"
endfunction
" }}}

let &cpo = s:cpo_save
unlet s:cpo_save
