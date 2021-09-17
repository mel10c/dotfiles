" -------------------------------- Theme-settings- -------------------------------
" ================================================================================
let g:sonokai_transparent_background = 1
colorscheme sonokai
"colorscheme nord
"colorscheme onedark
hi CursorLineNr guibg=#4c566a guifg=white
hi LineNr guifg=#4c566a
set t_Co=256
set termguicolors " enable true colors support
set guifont=Hack_Nerd_Font_Mono:h14
set cursorline
map <leader>0 <Cmd>colorscheme onedark<CR>
map <leader>9 <Cmd>colorscheme nord<CR>
hi normal guibg=none

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" ----------------------------- mhinz/vim-startify  ------------------------------
" ================================================================================
function! StartifyEntryFormat()
    "return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

function! s:truncate_filename(fname)
  let fname = fnamemodify(a:fname, ':~:p')
  let maxchars = winwidth(0) - (g:startify_padding_left * 2 + 6)
  if strdisplaywidth(fname) - 1 > maxchars
    while strdisplaywidth(fname) > maxchars
      let fname = substitute(fname, '.$', '', '')
    endwhile
    let fname = fname . '>'
  endif
  return fname
endfunction

let g:startify_transformations = [
  \ ['.*', function('s:truncate_filename')],
  \ ]

let s:header = [
      \ '',
      \ '',
  	  \ '╻ ╻   ╻   ┏┳┓',
  	  \ '┃┏┛   ┃   ┃┃┃',
  	  \ '┗┛    ╹   ╹ ╹',
  	  \ '',
      \ ' [ MELANEY ]',
      \ '',
      \ ]

let s:footer = [
      \ '',
      \ ]

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
"let g:startify_custom_header = s:header
"let g:startify_custom_f0ooter = s:footer

let g:startify_lists = [
          \ { 'type': 'files',     'header': s:center(['Recent Files'])            },
          \ { 'type': 'dir',       'header': s:center([''. getcwd()]) },
          \ { 'type': 'sessions',  'header': s:center(['Sessions'])       },
          \ ] 

let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
let g:startify_relative_path = 1
let g:startify_files_number           = 10
let g:startify_session_persistence    = 2
let g:startify_padding_left = 20
map gs :Startify<CR>

" -------------------------- 'kyazdani42/nvim-tree.lua' --------------------------
" ================================================================================
let g:nvim_tree_width = 30
let g:nvim_tree_quit_on_open = 1 
let g:nvim_tree_follow_update_path = 0
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
nnoremap tt :NvimTreeToggle<CR>
nnoremap tf :NvimTreeFindFile<CR>
highlight NvimTreeFolderIcon guibg=blue
let g:nvim_tree_show_icons = {
	\ 'git': 1,
	\ 'folders': 1,
	\ 'files': 1,
  \ 'folder_arrows': 1,
	\}
let g:nvim_tree_icons = {
      \ 'default':        '',
      \ 'symlink':        '',
      \ 'git': {
      \   'unstaged':     "✗",
      \   'staged':       "✓",
      \   'unmerged':     "",
      \   'renamed':      "➜",
      \   'untracked':    "★",
      \   'deleted':      "",
      \  },
      \ 'folder': {
      \   'arrow_open':   "",
      \   'arrow_closed': "",
      \   'default':      "",
      \   'open':         "",
      \   'empty':        "",
      \   'empty_open':   "",
      \   'symlink':      "",
      \   'symlink_open': "",
      \  },
      \  'lsp': {
      \    'hint': "",
      \    'info': "",
      \    'warning': "",
      \    'error': "",
      \  }
      \ }


" ---------------------------- RRethy/vim-illuminate -----------------------------
" ================================================================================
"let g:Illuminate_highlightUnderCursor = 1
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedCurWord cterm=italic gui=italic
augroup END

" ------------------------------ ellisonleao/glow.nvim ---------------------------
" ================================================================================

" ------------ nvim-lua/plenary.nvim & nvim-telescope/telescope.nvim -------------
" ================================================================================
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ---------------------- nvim-treesitter/nvim-treesitter -------------------------
" ================================================================================
"require'nvim-treesitter.configs'.setup {
  "ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  "highlight = {
    "enable = true,              -- false will disable the whole extension
  "},
"}





luafile ~/.config/nvim/appearance/statusline.lua
