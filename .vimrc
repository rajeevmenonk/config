set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'Yggdroot/LeaderF'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
" Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Plugin to align code as per =
" To align in visual mode
"  use \a for =
"  use \b for :
source ~/.vim/customFunctions/align.vim

" Ctrl - x Ctrl - l Ctrl - n/p: Line Completion
" Crtl - x Ctrl - k: word completion.
set dictionary=/usr/share/dict/words

" NERDTree directory issue workaround
let g:NERDTreeDirArrows=0

" For Cscope
source ~/.vim/customFunctions/cscopeShortCuts.vim
source ~/.vim/cscope.vim
set nocscopeverbose 

" Py Mode
let g:pymode_options_max_line_length = 85
let g:pymode_lint_checkers = ['pylint']
let g:pymode_rope = 0
let g:pymode_lint_on_write=0
"let mapleader = ","

" Cntrl P
let g:ctrlp_by_filename = 1

" Syntax related
source ~/.vim/syntax/format.vim

" TagBar
let g:tagbar_sort = 0

"Mappings
:nnoremap <F2> :LeaderfFile<CR>
nnoremap <F3> :bp<CR>
nnoremap <F4> :bn<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F6> :e #<CR>
:nnoremap <F7> :source ~/.vimrc <CR>
nmap <F8> :TagbarToggle<CR>

nnoremap <silent> <Leader>1 1gt
nnoremap <silent> <Leader>2 2gt
nnoremap <silent> <Leader>3 3gt
nnoremap <silent> <Leader>4 4gt
nnoremap <silent> <Leader>5 5gt
nnoremap <silent> <Leader>6 6gt
nnoremap <silent> <Leader>7 7gt
nnoremap <silent> <Leader>8 8gt
nnoremap <silent> <Leader>9 9gt
nnoremap <silent> <Leader>a :NERDTree<CR>
nnoremap <silent> <Leader>b :bufdo tab split<CR>
nnoremap <silent> <Leader>o :cp<CR>
nnoremap <silent> <Leader>n :cn<CR>
nnoremap <silent> <Leader>q :vim /<c-r>=expand("<cword>")<CR>/g ./../*/*<CR>
nnoremap <silent> <Leader>s :tab split<CR>
nnoremap <silent> <Leader>t :tabnew<Space>
nnoremap <silent> <Leader>w :vim /<c-r>='\V'.escape(expand("<cword>"), '/\')<CR>"<CR>/g ./../*/*<CR>

nnoremap <leader>p :PymodeLint<cr>    "pressing ,p will run plyint on current buffer

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Disabling arrow keys in vim
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

":helptags ~/.vim/doc/
"let g:ctrlp_user_command = 'find %s -name "*.py"'
" Set no max file limit
let g:ctrlp_max_files = 0
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0

" Ignore these directories
set wildignore+=*/build/**

let g:airline_theme='minimalist'

