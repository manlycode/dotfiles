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
imap <C-y>     <Plug>(neosnippet_expand_or_jump)

" Ultisnips
" --------------
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" NeoTerm
" ----------------------------------------------
"let g:neoterm_keep_term_open=0
let g:neoterm_focus_when_test_fail=1
let g:neoterm_size = '20'
let g:neoterm_position = 'horizontal'
" let g:neoterm_position = 'vertical'
" let g:neoterm_automap_keys = ',tt'

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

" vim: ts=4 sw=4 et
 
let $SDKROOT="$(xcodebuild -version -sdk macosx Path)"
let g:neomake_swift_swiftc_maker = {
        \ 'args': ['-parse'],
        \ 'errorformat':
            \ '%E%f:%l:%c: error: %m,' .
            \ '%W%f:%l:%c: warning: %m,' .
            \ '%Z%\s%#^~%#,' .
            \ '%-G%.%#',
        \ }

let g:neomake_swift_swiftlint_maker = {
    \ 'args': ['lint', '--path'],
    \ 'errorformat': '%f:%l:%c: %trror: %m,' .
    \ '%f:%l:%c: %tarning: %m,' .
    \ '%f:%l: %trror: %m,' .
    \ '%f:%l: %tarning: %m'
    \ }
let g:neomake_swift_enabled_makers = ['swiftc', 'swiftlint']

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint']

let g:neomake_eruby_jshint_maker = {
    \ 'args': ['--verbose', '--extract=auto'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_eruby_enabled_makers = ['jshint']

let g:neomake_python_enabled_makers = ['pep8']


" CtrlP
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" nnoremap <leader>b :CtrlPBuffer<CR>

 " Markdown
 "
 " Go
 " Run deoplete.nvim automatically
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

" Swift
autocmd FileType swift imap <buffer> <C-j> <Plug>(deoplete_swift_jump_to_placeholder)


" Commentary
nnoremap <c-/> :Commentary<CR>

" FZF
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

nmap <leader>f :FZF<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>h :History<CR>

