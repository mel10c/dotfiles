" --------------------------------------- Basics ---------------------------------
let mapleader=" "
noremap ,q :q<CR>
noremap ,w :w<CR>
map <C-S> :w!<CR>
map ; %
noremap > ;
noremap < ,
noremap ,s :source ~/.config/nvim/init.vim<CR>
map gv :e ~/dotfiles/contents/.config/nvim/init.vim<CR>
inorema , ,<C-g>u
inoremap . .<C-g>u
inoremap $ $<C-g>u
inoremap { }<C-g>u
inoremap } }<C-g>u
inoremap \ \<C-g>u
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
noremap <silent> H 0
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
noremap Sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap Sj :set splitbelow<CR>:split<CR>
noremap Sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap Sl :set splitright<CR>:vsplit<CR>
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>tk <C-w>t<C-W>K
map <leader>th <C-w>t<C-W>H

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Start terminals

map <leader>v :Vista coc<CR>
map <leader>z :Goyo<CR>
