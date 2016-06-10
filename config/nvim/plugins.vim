" AirLine
" --------------
let g:airline_powerline_fonts = 1

" NerdTree
" --------------
" nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>n :Sexplore<cr>


" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']


" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Ultisnips
" --------------
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" Deoplete
let g:deoplete#enable_at_startup = 1

" NeoTerm
" ----------------------------------------------
let g:neoterm_size = '10'
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSend<cr>
vnoremap <silent> <f9> :TREPLSend<cr>

" run set test lib
nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args>

" NeoMake
autocmd! BufWritePost * Neomake

let g:neomake_swift_swiftlint_maker = {
    \ 'args': ['lint', '--path'],
    \ 'errorformat': '%f:%l:%c: %trror: %m,' .
    \ '%f:%l:%c: %tarning: %m,' .
    \ '%f:%l: %trror: %m,' .
    \ '%f:%l: %tarning: %m'
    \ }
let g:neomake_swift_enabled_makers = ['swiftlint']

" CtrlP

nnoremap <leader>b :CtrlPBuffer<CR>

 " Markdown
 "
 " Go
 " Run deoplete.nvim automatically
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Swift
autocmd FileType swift imap <buffer> <C-j> <Plug>(deoplete_swift_jump_to_placeholder)
