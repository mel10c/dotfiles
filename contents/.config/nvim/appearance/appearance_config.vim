" ================================================================================
" =============================== APPEARANCE CONFIGS =============================
" ================================================================================

" Color and Gui setting
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
hi normal guibg=none

" Colorsheme setting
"let g:sonokai_transparent_background = 1
"let g:tokyonight_transparent = 1
"let g:nord_underline_option = 'none'
"let g:nord_italic = v:true
"let g:nord_italic_comments = v:false
"let g:nord_minimal_mode = v:false
"colorscheme nordbuddy
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif
colorscheme onedark
"let g:nnightfox_transparent = true

" Cursor and number line setting
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline
hi cursorline guibg=#3B4252
hi cursorcolumn guibg=#3B4252
