# autopep8.vim

## Description
**autopep8.vim** is a vim script, cleans up your python source code with autopep8.

## Setup

This script depneds on autopep8. Before beginning the installation, please confirm that `autopep8` command exists on your environment.

If you are using NeoBundle, or any other bundler-like plugins, just write below in .vimrc:
    
    NeoBundle 'minamorl/autopep8.vim'

Also you can manually install this script. (not recommended)

##Sample Configuration
    
    autocmd vimrc FileType python nnoremap <buffer> <silent> <leader>t :call autopep8#clean()<CR>
