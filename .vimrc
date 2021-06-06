set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Based Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Python syntax plugins
Plugin 'vim-python/python-syntax'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'dense-analysis/ale'

"Search file by name
Plugin 'Yggdroot/LeaderF'
"Plugin 'scrooloose/syntastic'

" Git integration plugins
Plugin 'tpope/vim-fugitive'
" :Magit to open diff, "S" to stage and <C-n> to next and "CC" to commit
Plugin 'jreybert/vimagit'

" Vim Theme
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'

" Text completer helper
Plugin 'maralla/completor.vim'

Plugin 'majutsushi/tagbar'
Plugin 'tibabit/vim-templates'
Plugin 'bazelbuild/vim-ft-bzl'

" Make checkboxes and close them
Plugin 'jkramer/vim-checkbox'

" Search code. Replacement for grep. Dont see it being used.
"Plugin 'mileszs/ack.vim'

"Already disabled ones.
"Plugin 'ajh17/VimCompletesMe'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'FelikZ/ctrlp-py-matcher'
"Plugin 'python-mode/python-mode'
"Plugin 'tmhedberg/SimpylFold'
" Tmux slime for vim
"Plugin 'benmills/vimux'
"Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Simple plugins by import
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin to align code as per =
" To align in visual mode
"  use \a for =
"  use \b for :
source ~/.vim/customFunctions/align.vim

" Cscope plugin
source ~/.vim/customFunctions/cscopeShortCuts.vim
source ~/.vim/cscope.vim
set nocscopeverbose 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-python/python-syntax
source ~/.vim/plugin_configs/config_python_syntax.vim
" For vim-python-ped-indent
source ~/.vim/plugin_configs/config_vim_python_pep_indent.vim
" vim-airline/vim-airline-themes
" vim-airline/vim-airline
source ~/.vim/plugin_configs/config_vim_airline.vim
" maralla/completor.vim
source ~/.vim/plugin_configs/config_completer.vim
" majutsushi/tagbar
source ~/.vim/plugin_configs/config_tagbar.vim
" tibabit/vim-templates
source ~/.vim/plugin_configs/config_vim_templates.vim

" Configs of disabled plugins
" FelikZ/ctrlp-py-matcher
" source ~/.vim/plugin_configs/config_cntrlp_py_matcher.vim
" scrooloose/syntastic
" source ~/.vim/plugin_configs/config_syntastic.vim
" python-mode
" source ~/.vim/plugin_configs/config_python_mode.vim
" scrooloose/nerdtree
" source ~/.vim/plugin_configs/config_nerdtree.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Includes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax related includes
source ~/.vim/syntax/format.vim
" Kep mappings
source ~/.vim/mappings.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore these directories
set wildignore+=*/build/**
set nu
