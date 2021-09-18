" ================================================================================
" =============================== APPEARANCE CONFIGS =============================
" ================================================================================

" Color and Gui setting
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
hi normal guibg=none

" Colorsheme setting
let g:sonokai_transparent_background = 1
colorscheme sonokai
"colorscheme nord
"colorscheme onedark

" Cursor and number line setting
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline
hi cursorline guibg=#3B4252
hi cursorcolumn guibg=#3B4252
