" ================================================================================
" =============================== APPEARANCE CONFIGS =============================
" ================================================================================

" -------------------------------- Theme-settings- -------------------------------
" Color and Gui setting
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
hi normal guibg=none

" Cursor and number line setting
hi CursorLineNr guibg=#4c566a guifg=white
hi LineNr guifg=#4c566a
set cursorline
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Colorsheme setting
let g:sonokai_transparent_background = 1
colorscheme sonokai
"colorscheme nord
"colorscheme onedark

" ----------------------------- mhinz/vim-startify  ------------------------------
source ~/.config/nvim/appearance/startify.vim

" -------------------------- kyazdani42/nvim-tree.lua  ---------------------------
source ~/.config/nvim/appearance/nvim_tree.vim
"
" ------------ nvim-lua/plenary.nvim & nvim-telescope/telescope.nvim -------------
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ------------------------ 'glepnir/galaxyline.nvim' -----------------------------
luafile ~/.config/nvim/appearance/statusline.lua
