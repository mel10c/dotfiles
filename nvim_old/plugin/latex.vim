" ----------------- lervag/vimtex & KeitaNakamura/tex-conceal.vim ----------------
" ================================================================================
"let &runtimepath  = '~/.config/nvim/plugged/vimtex,' . &runtimepath
"let &runtimepath .= '~/.config/nvim/plugged/vimtex/after'
let g:tex_flavor='latex'
" let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
" let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname='nvr'
" let g:vimtex_quickfix_latexlog = {'fix_paths':0}
set conceallevel=2
let g:tex_conceal='abdmg'

"set conceallevel=3
"let g:tex_conceal="abdgms"
