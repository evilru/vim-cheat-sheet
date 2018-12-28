set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Vundle
Plugin 'gmarik/Vundle.vim'
" Editorconfig
Plugin 'editorconfig/editorconfig-vim'
" Startup screen
Plugin 'mhinz/vim-startify'
" Set Markers
Plugin 'kshenoy/vim-signature'
" Tag reindexer
Plugin 'ludovicchabant/vim-gutentags'
" Tag sidebar
Plugin 'majutsushi/tagbar'
" Solarized theme
Plugin 'morhetz/gruvbox'
" Status bars
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" DevIcons
Plugin 'ryanoasis/vim-devicons'
" NerdTree file explorer
Plugin 'scrooloose/nerdtree'
" NerdTree Git Plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" CtrlP file, buffer, tag search
Plugin 'ctrlpvim/ctrlp.vim'
" Fuzzy file search
" Plugin 'junegunn/fzf'
" Git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/gv.vim'
" Polyglot syntax hilighting
Plugin 'sheerun/vim-polyglot'
" Asynchronous Code Linting
Plugin 'w0rp/ale'
" Deoplete: code completion tool
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
" Use TAB for code completion
Plugin 'ervandew/supertab'
" Autoformat code
Plugin 'Chiel92/vim-autoformat'
" Dirvish: directory navigation
Plugin 'justinmk/vim-dirvish'
" Indent line
Plugin 'yggdroot/indentline'
" EasyMotion: effective movements
Plugin 'easymotion/vim-easymotion'
" Jump between splits with Ctrl
"Plugin 'christoomey/vim-tmux-navigator'
" NerdCommenter
Plugin 'scrooloose/nerdcommenter'
" Incremental expand selection
Plugin 'terryma/vim-expand-region'
" Golang
Plugin 'Shougo/vimproc.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" set terminal colors
set t_Co=256
" Clipboard integration
set clipboard=unnamed
" Enable syntax highlighting
syntax enable
" Display line numbers
set number
" Encoding UTF-8
set encoding=utf-8
" A tab is 4 spaces
set tabstop=4
" Always uses spaces instead of tabs
set expandtab
" Insert 4 spaces when tab is pressed
set softtabstop=4
" An indent is 4 spaces
set shiftwidth=4
" indet when moving to the next line while writing code
set autoindent
set smartindent
" Round indent to nearest shiftwidth multiple
set shiftround
" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>
" Disable search hilighting
nmap <esc><esc> :noh<CR>
" gruvbox theme
set background=dark
colorscheme gruvbox
let g:gruvbox_bold=1
let g:gruvbox_italic=1
" Airline
" Enable Airline
let g:airline#extensions#branch#enabled = 1
" Show list of buffers in tabline
let g:airline#extensions#tabline#enabled = 1
" Show just the filename in tabline
let g:airline#extensions#tabline#fnamemod = ':t'
" Switch beetween buffers: show buffer number in Airline
let g:airline#extensions#tabline#buffer_nr_show = 1
" Use fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
     let g:airline_symbols = {}
endif
" Airline symbols
let g:airline_left_sep = "\uE0C0"
let g:airline_right_sep = "\uE0C2"
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" Airline theme
let g:airline_solarized_bg='dark'
" Toggle tagbar
nmap <F8> :TagbarToggle<CR>
" NERDTree
" Toggle NERDTree on the right side by C-n
noremap  <c-n> :NERDTreeToggle<cr>
" Place NERDTree to right
let g:NERDTreeWinPos = "right"
let g:NERDTreeQuitOnOpen = "1"
" CtrlP
" CtrlP file, buffer, tag search
let g:ctrlp_extensions = ['mixed', 'changes', 'quickfix']
let g:ctrlp_cmd = 'call CallCtrlP()'
" Search tags with Ctrl-i
noremap <c-i> :CtrlPTag<CR>
func! CallCtrlP()
    if exists('s:called_ctrlp')
        CtrlPLastMode
    else
        let s:called_ctrlp = 1
        CtrlPMixed
    endif
endfunc
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
" Deoplete: code completion tool
" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
" Select from completion list with SHIFT-j/k
inoremap <expr> <S-j> ("\<C-n>")
inoremap <expr> <S-k> ("\<C-p>")
" Save file with C-s
"nnoremap <silent><C-s> :w<CR>
" Set current directory to current file with ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
" Switch beetween buffers: show buffer number in Airline
let g:airline#extensions#tabline#buffer_nr_show = 1
" Switch beetween buffers: switch with number
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
nnoremap <leader>3 :3b<CR>
nnoremap <leader>4 :4b<CR>
nnoremap <leader>5 :5b<CR>
nnoremap <leader>6 :6b<CR>
nnoremap <leader>7 :7b<CR>
nnoremap <leader>8 :8b<CR>
nnoremap <leader>9 :9b<CR>
" Press <Space> for bidirectional easy movements
map <Space> <Plug>(easymotion-bd-w)
" Toggle comment in visual mode
vmap <silent>/ <Plug>NERDCommenterToggle
" Go to definition in new split
nnoremap <silent>fd <C-w>v<C-w>w :call feedkeys("gd")<CR>
" define where new slpits are open
set splitbelow
set splitright
" split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
" paste toggle
set pastetoggle=<f5>
" show a visual line under the cursor's curent line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" Close buffer with C-w
nnoremap <silent><C-w> :bw<CR>
