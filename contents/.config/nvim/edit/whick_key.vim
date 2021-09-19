" ================================================================================
" ================================= MAPPING CONFIGS ==============================
" ================================================================================

" ---------------------------------- basic configs -------------------------------
" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=250


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" ------------------------------------- Floaterm ---------------------------------
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=25'       , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ }

" ------------------------------------ telescope ---------------------------------
let g:which_key_map.f = {
      \ 'name' : '+Telescope' ,
      \ 'f' : [':Telescope find_files'                          , 'files'],
      \ 'k' : [':Telescope keymaps'                             , 'keymaps'],
      \ 'b' : [':Telescope current_buffer_fuzzy_find'           , 'buffer find'],
      \ 'w' : [':Telescope grep_string'                         , 'words'],
      \ 'o' : [':Telescope file_browser'                        , 'browse'],
      \ 'c' : [':Telescope commands'                            , 'available commands'],
      \ 't' : [':Telescope tags'                                , 'tags'],
      \ 'h' : [':Telescope help_tags'                           , 'help commands'],
      \ 'v' : [':Telescope vim_options'                         , 'vim settings'],
      \ }

" ------------------------------------- coc --------------------------------------
let g:which_key_map.c = {
      \ 'name' : '+Coc' ,
      \ '=' : ['<Plug>(coc-diagnostic-next)'                    , 'next diagn'],
      \ '-' : ['<Plug>(coc-diagnostic-prev)'                    , 'prev diagn'],
      \ 'd' : ['<Plug>(coc-definition)'                         , 'go to def'],
      \ 'n' : ['<Plug>(coc-rename)'                             , 'rename'],
      \ 'f' : ['<Plug>(coc-format-selected)'                    , 'format'],
      \ 'a' : ['<Plug>(coc-codeaction)'                         , 'code action'],
      \ 'q' : ['<Plug>(coc-fix-current)'                        , 'quickfix'],
      \ 'c' : [':CocList commands'                              , 'coc commands'],
      \ }

" -------------------------------- send to terminal  -----------------------------

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
