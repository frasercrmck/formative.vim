# formative.vim

Expands the functionality of the default & suggested clang-format [vim integration](http://clang.llvm.org/docs/ClangFormat.html#vim-integration).

The main advantage over the 'stock' vim integration is the use of text objects.

Example:

    <C-K>2j   - ClangFormat 2 lines downwards
    <C-K>iB   - ClangFormat inside the surrounding { } scope
    <C-K>ap   - ClangFormat around the current paragraph
    <C-K>/foo - ClangFormat from the current line until the first match of 'foo'

#### Key Bindings

\<C-K> is the default 'leader' key in this plugin. Follow this key with whichever motion or text object you like, as in the examples above. It can be customised: see below.

#### Special Bindings

A 'quick' ClangFormat binding is provided via `g:fmtv_clang_format_line_key`. This works on the current line alone. Its default mapping is `<C-K>k`, which is designed to emulate vim's `c -> cc`, `d -> dd` line-wise operations.

There's also a binding for invoking clang-format on the entirety of the current file, and is great for doing a lot of formatting in one go. Its default mapping is `<C-K>u`, and is modified by setting `g:fmtv_clang_format_file_key` to your own preferred key combination.

In summary, here are the additional, special, reconfigurable bindings:

    <C-K>k - ClangFormat the current line
    <C-K>u - ClangFormat the entire file

#### Demonstration

For the visual learners amongst you, here's an oh-so-web-2.0 GIF:

![](https://cloud.githubusercontent.com/assets/1158422/5235521/00c36298-77fc-11e4-88f7-e23735c08e0e.gif)

## Installation

### Vim Native

Issue the following commands when using Vim 8+:

    mkdir -p ~/.vim/pack/git-pack/start
    git clone git://github.com/frasercrmck/formative.vim.git -- ~/.vim/pack/git-pack/start/formative.vim

### [vim-plug](https://github.com/junegunn/vim-plug)

Add the following to your `.vimrc`:

    Plug 'frasercrmck/formative.vim'

### [Vundle](https://github.com/gmarik/Vundle.vim)

Add the following lines to your `.vimrc`:

    Plugin 'frasercrmck/formative.vim'
Then type the following in vim:

    :PluginInstall

### [pathogen](https://github.com/tpope/vim-pathogen)

Issue the following commands:

    cd ~/.vim/bundle && git clone git://github.com/frasercrmck/formative.vim.git
Don't forget to update the help with: `:helptags`

## Customisation

You will probably need to override the default path to your `clang-format.py` script. In your `.vimrc`, add the following line:

    let g:fmtv_clang_format_py = '/path/to/my/clang-format.py'

You can remove or override the default key bindings, too. Any of the following examples can be added to your `.vimrc`.

    let g:fmtv_clang_format_nor_key  = MyKeyBinding 
    let g:fmtv_clang_format_vis_key  = MyKeyBinding 
    let g:fmtv_clang_format_ins_key  = MyKeyBinding 
    let g:fmtv_clang_format_line_key = MyKeyBinding 
    let g:fmtv_clang_format_file_key = MyKeyBinding

Note: please read the help by typing `:help formative` in vim for more information.
