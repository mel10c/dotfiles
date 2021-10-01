" ================================================================================
" ================================= MAPPING CONFIGS ==============================
" ================================================================================

" ---------------------------------- basic configs -------------------------------
" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map = {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=250
let g:which_key_hspace = 0

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" --------------------------------- Leader Mapping -------------------------------
noremap <leader>0 :colorscheme onedark<CR>:hi normal guibg=none<cr>
let g:which_key_map.0 = 'onedark'
noremap <leader>9 :colorscheme nord<CR>:hi normal guibg=none<cr>
let g:which_key_map.9 = 'nord'

noremap <leader>q :q<CR>
let g:which_key_map.q = 'quit'
noremap <leader>w :w<CR>
let g:which_key_map.w = 'write'
noremap <leader>o <C-^>
let g:which_key_map.o = 'buffer switch'
noremap <leader>v :Vista coc<cr>
let g:which_key_map.v = 'vista'
noremap <leader>x :VimtexCompile<cr>
let g:which_key_map.x = 'Vimtex'
"noremap <leader>s :source ~/.config/nvim/init.vim<CR>
"let g:which_key_map.s = 'source'

" ------------------------------------- Floaterm ---------------------------------
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=25'       , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'R' : [':FloatermNew R'                                 , 'R'],
      \ 'z' : [':FloatermNew zsh'                               , 'zsh'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ }

" ------------------------------------ Telescope ---------------------------------
let g:which_key_map.f = {
      \ 'name' : '+Telescope' ,
      \ 'b' : [':Telescope buffers'                             , 'buffers'],
      \ 'c' : [':Telescope find_files cwd=~/dotfiles/contents/.config/' , 'dotfile'],
      \ 'd' : [':Telescope coc diagnostics theme=ivy'           , 'diagnostics'],
      \ 'e' : [':Telescope registers'                           , 'registers'],
      \ 'f' : [':Telescope find_files'                          , 'files'],
      \ 'g' : [':Telescope git_status'                          , 'git status'],
      \ 'k' : [':Telescope keymaps'                             , 'keymaps'],
      \ 'u' : [':Telescope find_files cwd=~/Documents/Temporary/' , 'uni'],
      \ 'z' : [':Telescope current_buffer_fuzzy_find'           , 'buffer find'],
      \ 'o' : [':Telescope commands'                            , 'commands'],
      \ 'r' : [':Telescope coc references theme=ivy'            , 'coc references'],
      \ 't' : [':Telescope treesitter'                          , 'treesitter'],
      \ 'w' : [':Telescope live_grep'                           , 'search word'],
      \ }

" ------------------------------------- Coc --------------------------------------
let g:which_key_map.c = {
      \ 'name' : '+Coc' ,
      \ 'g' : ['<Plug>(coc-definition)'                         , 'go to def'],
      \ 'n' : ['<Plug>(coc-rename)'                             , 'rename'],
      \ 'f' : ['<Plug>(coc-format)'                             , 'format'],
      \ 'a' : ['<Plug>(coc-codeaction)'                         , 'action'],
      \ 'q' : ['<Plug>(coc-fix-current)'                        , 'quickfix'],
      \ 'c' : [':CocList commands'                              , 'commands'],
      \ 'd' : [':CocDiagnostics'                                , 'diagnostics'],
      \ }
      "\ '=' : ['<Plug>(coc-diagnostic-next)'                    , 'next diagn'],
      "\ '-' : ['<Plug>(coc-diagnostic-prev)'                    , 'prev diagn'],

" ------------------------------- Window Navigation  -----------------------------
noremap <leader>k <C-w>k
let g:which_key_map.k = 'up'
noremap <leader>j <C-w>j
let g:which_key_map.j = 'down'
noremap <leader>h <C-w>h
let g:which_key_map.h = 'left'
noremap <leader>l <C-w>l
let g:which_key_map.l = 'right'


map %k :set nosplitbelow<cr>:split<cr>:set splitbelow<cr>
map %j :set splitbelow<cr>:split<cr>
map %h :set nosplitright<cr>:vsplit<cr>:set splitright<cr>
map %l :set splitright<CR>:vsplit<CR>

let g:which_key_map.s = {
      \ 'name' : '+window' ,
      \ 'h' : ['%h'                                             , 'left'],
      \ 'j' : ['%j'                                             , 'down'],
      \ 'k' : ['%k'                                             , 'up'],
      \ 'l' : ['%l'                                             , 'right'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
