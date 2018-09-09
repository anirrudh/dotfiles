" Vim-Custom-Config
" Author: Anirrudh Krishnan 
" Sunday June 24th, 2016 

" Miscellaneous Settings 
set mouse=a " This setting enables mouse support in vim 
"The next line allows for execution of Pathogen, my preffered plugin manager.
execute pathogen#infect()   

" Visuals 
syntax on
filetype on
filetype plugin indent on "This allows for auto highlighting and indenting 
set number "This shows the line numbers in Vim.  
set nocompatible "Disable vi compatibility (legacy code) 
syntax enable 

" Set Theme  
colorscheme gruvbox 
"colorscheme solarized 
set background=dark
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='soft'  
set guifont=Fira\ Mono:h18

" Spaces and Tabs 
set tabstop=4 " This visually represents the TAB spaces when reading a file in. 
set softtabstop=4 " This tells us the tab spaces while editing code
set expandtab " This allows us to use Tab as 4 Spaces (Python, Java, C++, etc.) 

" Folding Preferences 
set foldmethod=indent " This makes vim fold based on the indents in the program 
set foldnestmax=10 " Sets the maximum amount of nested folds you can have to 10 
set foldlevelstart=10 " Sets the fold level so only super nested folds are folded

"Set Path for Powerline Bindings 
set rtp+=/Library/Python/2.7/site-packages/powerline/powerline/bindings/vim/

" Set the Terminal (iterm) to always use 256 Colors and show the last line 
set t_Co=256
set laststatus=2

" Custom Keymappings 
" C/C++ 
set autoindent " use indentation of the line just written 
set smartindent " intelligent indentation for C 

" CtrlP (Fuzzy File Search) 
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Prolog set filetype (uncomment to set pl to prolog instead of PERL)
" let g:filetype_pl="prolog"
" Nerdtree plugin
map <C-n> :NERDTreeToggle<CR>
