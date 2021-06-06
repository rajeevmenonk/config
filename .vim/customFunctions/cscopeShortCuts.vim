
" Regular Search in the same window.
nmap <C-@><C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@><C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@><C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@><C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@><C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@><C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-@><C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@><C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Split the screen horizontally and search.
nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR> 
nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR> 

" Split the screen vertically and search.
nmap <C-\>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
nmap <C-\>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap <C-\>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
