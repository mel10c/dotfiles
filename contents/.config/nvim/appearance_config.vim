" ================================================================================
" =============================== APPEARANCE CONFIGS =============================
" ================================================================================

let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:true
let g:nord_italic = v:false
colorscheme nord

" Color and Gui setting
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
"hi normal guibg=none

"
" Cursor and number line setting
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set cursorline
hi cursorline guibg=#3B4252
hi cursorcolumn guibg=#3B4252

" Colorsheme setting
"augroup colortheme
    "autocmd!
    "autocmd FileType * colorscheme nord
    "autocmd FileType java colorscheme onedark
    "autocmd FileType java hi normal guibg=none
    "autocmd FileType python colorscheme onedark
    "autocmd FileType python hi normal guibg=none
    "autocmd FileType lua colorscheme onedark
    "autocmd FileType lua hi normal guibg=none
    "autocmd FileType tex colorscheme onedark
    "autocmd FileType tex hi normal guibg=none
"augroup END

