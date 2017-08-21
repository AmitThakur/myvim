inoremap jk <ESC>
let mapleader = "\<Space>"
set encoding=utf-8
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Use indentation of previous line
set autoindent
 
" Use intelligent indentation for C
set smartindent
 
" Turn Line number on
set number
 
" Highlight Matching braces
set showmatch
 
" Syntax on
syntax on 

set nocompatible              
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
call vundle#end()       
filetype plugin indent on

