# autopep8.vim

**autopep8.vim** - cleaning up python source code with autopep8.

## Prerequisites

### Install latest autopep8

Before beginning the installation, please confirm that `autopep8` exists on your environment. If not, you can install autopep8 via pypi packages. Try `pip install autopep8 --upgrade`.

## Installation


### 1. Use package manager (Bundler/NeoBundle)
If you are using NeoBundle, write below in .vimrc:

```VimL    
NeoBundle 'minamorl/autopep8.vim'
```

and execute `:NeoBundleInstall` starts installation process.

### 2. Manual Install

You can manually install this script (but not recommended). 

Clone this repo, and copy all files under directory into your `~/.vim/`. 

## Configuration 

Add this line into in ~/.vimrc
    
```VimL
autocmd FileType python nnoremap <buffer> <silent> <leader>f :call autopep8#clean()<CR>
```

This scripts means map <leader>f to call autopep8.

## Advanced Settings

autopep8.vim can specify argments to pass *autopep8* commands by `g:autopep8_args`. If `g:autopep8_args` is not defined, autopep8.vim uses `--aggressive --aggressive` as a default value. 

If you do not want autopep8 to force keeping code under 80 columns, pass:

```VimL
let g:autopep8_args = "--aggressive --aggressive --max-line-length=200"
```
 
