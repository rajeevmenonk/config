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
" nnoremap <silent> <Leader>b :bufdo tab split<CR>
nnoremap <silent> <Leader>o :cp<CR>
nnoremap <silent> <Leader>n :cn<CR>
nnoremap <silent> <Leader>q :vim /<c-r>=expand("<cword>")<CR>/g ./../*/*<CR>
nnoremap <silent> <Leader>s :tab split<CR>
nnoremap <silent> <Leader>t :tabnew<Space>
nnoremap <silent> <Leader>w :vim /<c-r>='\V'.escape(expand("<cword>"), '/\')<CR>"<CR>/g ./../*/*<CR>
nnoremap <silent> <Leader>c :tabclose <CR>
nnoremap <Leader>r :VimuxPromptCommand<CR>

nnoremap <leader>p :PymodeLint<cr>

nnoremap <silent> <Leader>g :set spell spelllang=en_us<CR>
nnoremap <silent> <Leader>g! :set spell!<CR>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Disabling keys in vim
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
map Q <Nop>
map <F1> <Nop>

"Completor
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"

let @a = "Ofrom systest_runner.utils import APdb; APdb().set_trace()"
let @b = "Oimport pdb; pdb.set_trace()"

" Strikethrough -  TODO
" xnoremap <silent> <Leader>x a<C-V>u0336<Esc><Space>

" Fix the backspace madness
noremap! <C-?> <C-h>
