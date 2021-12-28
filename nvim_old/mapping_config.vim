" --------------------------------------- Basics ---------------------------------
let mapleader=" "
"inoremap ,, <++>
inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
nmap ; %
noremap < ,
noremap > ;
noremap ,s :source ~/.config/nvim/init.vim<CR>
map gv :e ~/dotfiles/contents/.config/nvim/init.vim<CR>
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap $ $<C-g>u
inoremap { }<C-g>u
inoremap } }<C-g>u
inoremap \ \<C-g>u
map _ _
setlocal spell
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" -------------------------- Insert Mode Emacs-style mapping ---------------------
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <ESC>ls

" ------------------------------------ Nagivation --------------------------------
nnoremap Y y$
vnoremap Y "+y
nnoremap ,p "_diwhp
nnoremap ,P "_Dp
inoremap <C-u> <C-w>
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> H ^
noremap <silent> L $
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap G Gzz
nnoremap { {zz
nnoremap } }zz
map <C-u> <C-u>zz
map <C-d> <C-d>zz
map <C-o> <C-o>z<CR>

" ----------------------------- Screen Motion Remaps -----------------------------
" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" --------------------------------- Plugin Remaps --------------------------------
"nnoremap ,ff <cmd>Telescope find_files<cr>
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


"map <leader>0 :colorscheme onedark<CR>:hi normal guibg=none<cr>

nnoremap tt :NvimTreeToggle<CR>
nnoremap tf :NvimTreeFocus<CR>

nmap ,b ysW*ysW*
xmap ,m S$
nmap ,m yssm
xmap , S

" nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
" nnoremap <silent>K <Cmd>Lspsaga hover_doc<CR>
" inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
" nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>

" inoremap <silent> <C-k> :Lspsaga signature_help<CR>
" nnoremap <silent><leader>ca :Lspsaga code_action<CR>
" nnoremap <silent> gr <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
" nnoremap <silent> gn :Lspsaga rename<CR>
" nnoremap <silent> gd :Lspsaga preview_definition<CR>
" nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
