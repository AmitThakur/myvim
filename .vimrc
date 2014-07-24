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

" --------------------------------------vundle plugin stuff ----------
set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

   
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'bling/vim-airline'
    
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ----------------------------------------------------------------------
" vim newline
" let g:airline#extensions#tabline#enabled = 1
" set laststatus=2
" let g:airline_theme='badwolf'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
"  
"  let g:airline_left_sep = '»'
"  let g:airline_left_sep = '▶'
"  let g:airline_right_sep = '«'
"  let g:airline_right_sep = '◀'
"					   
"					   "
let g:syntastic_cpp_check_header = 1
" include directories for C++ modules
let g:syntastic_cpp_include_dirs = [ 
	               \'/usr/include/python2.7',
                   \'/usr/include/qt4/QtCore', 
                   \'/usr/include/qt4/QtGui', 
                   \'/usr/include/qt4',
                   \]

"-------------------------------------------------------------------------

" clang
" highlight the warnings and errors
let g:clang_hl_errors=1
  
" open quickfix window on error
let g:clang_complete_copen=1
   
" use libclang directly, fast due to caching
let g:clang_use_library=1
    
     
" tell clang_complete where to find libclang
let g:clang_library_path='/usr/lib/llvm-3.4/lib/'
let g:clang_user_options='-I/usr/include/qt4/QtGui'
      
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
            
" Complete options (disable preview scratch window, longest
"            removed to aways
"            " show menu)
set completeopt=menu,menuone
             
" Limit popup menu height
set pumheight=20"
