call plug#begin('~/.local/share/nvim/plugged')
"NerdTree Plugin
Plug 'scrooloose/nerdtree'

"deoplete (autocomplete plugin)
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"deoplete python plugin
Plug 'zchee/deoplete-jedi'

"pyhton syntax-aware higlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"fzf (Fuzzy File Search)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"vim-surround, vim-repeat
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"vim-autoformat
Plug 'Chiel92/vim-autoformat'

"monokai-pro
"Plug 'phanviet/vim-monokai-pro'
Plug 'morhetz/gruvbox'

"Installing Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Orgmode for vim
Plug 'jceb/vim-orgmode'

"Add lldb/gdb integration for C 
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

call plug#end()
"Airliine Arrows!
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Don't let deoplete slow donwn semshi
let g:deoplete#auto_complete_delay = 100

"Autoformat Code file on Exit
"au BufWrite * :Autoformat

set number
set termguicolors
colorscheme gruvbox
let g:airline_theme='gruvbox'
map <C-n> :NERDTreeToggle<CR>
set cursorline
set lazyredraw
set showmatch

"Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"Mapping Leader Key
let mapleader=" "
nnoremap <SPACE> <Nop>

"custom mappings
"fzf
nmap <Leader>F :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

"Move Buffers without saving
set hidden

"Copy-Paste Functions to System Clipboard
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
