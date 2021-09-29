" ================================================================================
" =============================== FILETREE CONFIGS ===============================
" ================================================================================

" -------------------------------- Plugin configs --------------------------------
let g:nvim_tree_width = 30
let g:nvim_tree_quit_on_open = 0
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 0
let g:nvim_tree_highlight_opened_files = 3
let g:nvim_tree_respect_buf_cwd = 0
highlight NvimTreeFolderIcon guibg=blue

" -------------------------------- Icons configs ---------------------------------
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
      \   'untracked':    "?",
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

" ---------------------------------- Mappings ------------------------------------
nnoremap tt :NvimTreeToggle<CR>
nnoremap tf :NvimTreeFocus<CR>

lua << EOF
require'nvim-tree'.setup()
EOF
