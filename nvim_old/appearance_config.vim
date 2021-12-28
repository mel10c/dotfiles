" ================================================================================
" =============================== APPEARANCE CONFIGS =============================
" ================================================================================

"colorscheme nord
colorscheme nordfox

hi Pmenu guibg=#434C5E guifg=#d8dee9
hi PmenuSel guibg=#81a1c1 guifg=#d8dee9
hi PmenuThumb guibg=#434C5E guifg=#d8dee9


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

