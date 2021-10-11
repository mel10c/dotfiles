" ----------------------------- dkarter/bullets.vim ------------------------------
" ================================================================================
"
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
"let g:bullets_set_mappings = 0 " default = 1
let g:bullets_outline_levels = [ 'ROM', 'rom', 'ABC', 'abc', 'num', 'std-', 'std*', 'std+' ]
"inoremap <C-r> <C-o>:BulletPromote<cr>
"inoremap <C-t> <C-o>:BulletPromote<cr> default

" -------------------------- 'voldikss/vim-floaterm' -----------------------------
" ================================================================================
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" -------------------------- preservim/nerdcommenter -----------------------------
" ================================================================================
map ++ <plug>NERDCommenterToggle
let g:NERDCreateDefaultMappings = 0

" --------------------------- dhruvasagar/vim-table-mode -------------------------
" ================================================================================
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

