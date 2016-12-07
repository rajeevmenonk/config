:set hls
:set incsearch
:set ic
:set autoindent
 set tabstop=4
set shiftwidth=4
set expandtab
syntax on

" For the status line
set laststatus=2
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%8*\ %=\ Line:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ Column:%03c\                            "Colnr

set history=100
set backspace=indent,eol,start
set scrolloff=5
set cursorline

" color scheme
":color desert
:color elflord
:highlight Constant ctermfg=Brown
:set nowrap
"set foldmethod=syntax

"if has('cscope')
"  set cscopetag cscopeverbose
"
"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif
"
"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"
"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"endif

"set wildchar=<Tab> wildmenu wildmode=full
:nnoremap <F2> ?<c-r>=expand("<cword>")<CR>"<CR>
:nnoremap <F3> :bp<CR>
:nnoremap <F4> :bn<CR>
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <F6> :e #<CR>
:nnoremap <F7> :!service<Space>svsde<Space>reload<CR>
:nnoremap <F8> :!svreload<CR>
:nnoremap <silent> <Leader>q :vim /<c-r>=expand("<cword>")<CR>/g ./../*/*<CR>
:nnoremap <silent> <Leader>w :vim /<c-r>='\V'.escape(expand("<cword>"), '/\')<CR>"<CR>/g ./../*/*<CR>
:nnoremap <silent> <Leader>n :cn<CR>
:nnoremap <silent> <Leader>o :cp<CR>
:nnoremap <silent> <Leader>a :NERDTree<CR>

" To align in visual mode
"  use \a for =
"  use \b for :
:source ~/.vim/customFunctions/align.vim
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

" Ctrl - x Ctrl - l Ctrl - n/p: Line Completion
" Crtl - x Ctrl - k: word completion.
:set dictionary=/usr/share/dict/words

"See Tabs
":set list

" NERDTree directory issue workaround
let g:NERDTreeDirArrows=0
"setlocal foldmethod=indent
"set foldlevel=0
"set foldnestmax=2

" For Cscope
:source ~/.vim/customFunctions/cscopeShortCuts.vim
:so ~/.vim/cscope.vim
