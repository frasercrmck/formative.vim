# formative.vim

Expands the functionality of the default & suggested clang-format [vim integration](http://clang.llvm.org/docs/ClangFormat.html#vim-integration).

The main advantage over the 'stock' vim integration is the use of text objects.

Example:
    <C-K>2j - ClangFormat 2 lines downwards
    <C-K>iB - ClangFormat inside the surrounding { } scope
    <C-K>ap - ClangFormat around the current paragraph

<C-K> is the default 'leader' key in this plugin. It can be customized: see below.

A 'quick' ClangFormat binding is provided via `g:fmtv_clang_format_line_key`. This works on the current line alone. Its default mapping is `<C-K>k`, which is designed to emulate vim's `c -> cc`, `d -> dd` line-wise operations.

## Installation

If you use [Vundle](https://github.com/gmarik/Vundle.vim), add these lines to your `.vimrc`:

    Plugin 'frasercrmck/formative.vim'
Then type the following in vim:

    :PluginInstall

If you use [pathogen](https://github.com/tpope/vim-pathogen), then issue the following commands:

    cd ~/.vim/bundle && git clone git://github.com/frasercrmck/formative.vim.git
Don't forget to update the help with: `:helptags`

## Customisation

You will probably need to override the default path to your `clang-format.py` script. In your `.vimrc`, add the following line:

    let g:fmtv_clang_format_py = /path/to/my/clang-format.py

You can remove or override the default key bindings, too. Any of the following examples can be added to your `.vimrc`.

    let g:fmtv_clang_format_nor_key  = MyKeyBinding 
    let g:fmtv_clang_format_vis_key  = MyKeyBinding 
    let g:fmtv_clang_format_ins_key  = MyKeyBinding 
    let g:fmtv_clang_format_line_key = MyKeyBinding 

Note: please read the help by typing `:help formative` in vim for more information.
