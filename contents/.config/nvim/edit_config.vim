" Edit configs
" ----------------------------- 'preservim/tagbar' -------------------------------
" ================================================================================
nmap tb :TagbarToggle<CR>

" ----------------------------- dkarter/bullets.vim ------------------------------
" ================================================================================
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
"let g:bullets_set_mappings = 0 " default = 1
let g:bullets_outline_levels = [ 'ROM', 'rom', 'ABC', 'abc', 'num', 'std-', 'std*', 'std+' ]
inoremap <C-r> <C-o>:BulletPromote<cr>
"inoremap <C-t> <C-o>:BulletPromote<cr> default

" -------------------------- preservim/nerdcommenter -----------------------------
" ================================================================================
map ++ <plug>NERDCommenterToggle
if has("gui_running")
    map <D-/> <plug>NERDCommenterToggle
endif

" ------------------------------ sirver/ultisnips --------------------------------
" ================================================================================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
let &runtimepath  = '~/.config/nvim/plugged/vimtex,' . &runtimepath
let &runtimepath .= ',~/.config/nvim/plugged/vimtex/after'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname='nvr'
let g:vimtex_quickfix_latexlog = {'fix_paths':0}

set conceallevel=2
let g:tex_conceal="abdgm"

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


" ------------------------------ neoclide/coc.nvim -------------------------------
" ================================================================================
set encoding=utf-8
set hidden
set cmdheight=2
set updatetime=100
set shortmess+=c
set signcolumn=number
"set signcolumn=yes

nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

let g:coc_global_extensions = [ 
            \ 'coc-json', 
            \ 'coc-vimlsp', 
            \ 'coc-texlab', 
            \ 'coc-translator',
            \ 'coc-r-lsp',
            \ 'coc-snippets',
            \ 'coc-java',
            \ 'coc-sh']


