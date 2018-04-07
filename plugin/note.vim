" check if already loaded
if exists('g:notePlugLoaded')
	finish
endif
let g:notePlugLoaded = 1

" default keymappings
if !hasmapto('<Plug>openNote')
	nmap <silent> <unique> gn <Plug>openNote
endif

" map <Plug> to internal function
nnoremap <unique> <script> <Plug>openNote <SID>openNote
nnoremap <SID>openNote :call <SID>openNoteFn()<CR>

command! -nargs=* Note call s:openNoteFn(<q-args>)

" https://vi.stackexchange.com/a/2868
function! ChompedSystem( ... )
    return substitute(call('system', a:000), '\n\+$', '', '')
endfunction

" main
function! s:openNoteFn(...)
    let path = a:0 == 1 ? a:1 : ""
    let cmd  = "note --path-only " . path
    let note_path = ChompedSystem(cmd)
    execute "sp " . note_path
endfunction

