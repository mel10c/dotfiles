" ================================================================================
" ================================ STARTIFY CONFIGS ==============================
" ================================================================================

" ------------------------------- Personal configs -------------------------------
" Get Icons
function! StartifyEntryFormat()
    "return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction

" Get Center title 
function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

" Custom header
let s:header = [
      \ '',
      \ '',
  	  \ '╻ ╻   ╻   ┏┳┓',
  	  \ '┃┏┛   ┃   ┃┃┃',
  	  \ '┗┛    ╹   ╹ ╹',
  	  \ '',
      \ ' [ MELANEY ]',
      \ '',
      \ ]

" ------------------------------- Function configs -------------------------------
"  Get file name
function! s:truncate_filename(fname)
  let fname = fnamemodify(a:fname, ':~:p')
  let maxchars = winwidth(0) - (g:startify_padding_left * 2 + 6)
  if strdisplaywidth(fname) - 1 > maxchars
    while strdisplaywidth(fname) > maxchars
      let fname = substitute(fname, '.$', '', '')
    endwhile
    let fname = fname . '>'
  endif
  return fname
endfunction

let g:startify_transformations = [
  \ ['.*', function('s:truncate_filename')],
  \ ]

" Load header
let g:startify_custom_header = s:center(s:header)

" Load startify page
let g:startify_lists = [
          \ { 'type': 'files',     'header': s:center(['Recent Files'])            },
          \ { 'type': 'dir',       'header': s:center([''. getcwd()]) },
          \ { 'type': 'sessions',  'header': s:center(['Sessions'])       },
          \ ] 

" -------------------------------- Plugin configs --------------------------------
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
let g:startify_relative_path = 1
let g:startify_files_number           = 10
let g:startify_session_persistence    = 2
let g:stratify_padding_left = 20

" ---------------------------------- Mappings ------------------------------------
map gs :Startify<CR>
