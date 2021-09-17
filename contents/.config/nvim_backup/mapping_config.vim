" --------------------------------------- Basics ---------------------------------
let mapleader=" "
noremap ,q :q<CR>
noremap ,w :w<CR>
map <C-S> :w!<CR>
map ; %
noremap > ;
noremap < ,
noremap ,s :source ~/.config/nvim/init.vim<CR>
map gv :e ~/.config/nvim/init.vim<CR>
inoremap , ,<C-g>u
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
nnoremap ,p "_diwp
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
map ,k <C-w>k
map ,j <C-w>j
map ,h <C-w>h
map ,l <C-w>l
map ,tk <C-w>t<C-W>K
map ,th <C-w>t<C-W>H

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>
" Start terminals
map ,tr :new term://bash<CR>iR<CR><C-\><C-n><C-w>k
map ,tp :term<CR>python3<CR>
