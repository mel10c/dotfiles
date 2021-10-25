-- ===============================================================================
-- ================================ CORE MAPPINGS ================================
-- ===============================================================================

-- ----------------------------------- Basics ------------------------------------

-- shortcuts
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local g = vim.g

g.mapleader = " "
g.UltiSnipsJumpForwardTrigger="<c-f>"
g.UltiSnipsJumpBackwardTrigger="<c-b>"
-- g.UltiSnipsExpandTrigger="<Enter>"
-- g.UltiSnipsSnippetDirectories=["UltiSnips"]

-- ------------------------------ Navigation -------------------------------------
map('v', 'y', "y`]")
map('n', 'Y', 'y$')
map('v', 'Y', '"+y')
map('v', 'p', '"_dP')
map('n', '<leader>d', '"_d')
map('v', '<leader>d', '"_d')
map('n', '<leader>p', '"_diwP')
map('n', '<C-j>', ':m .+1<cr>==')
map('i', '<C-j>', '<esc>:m .+1<cr>==')
map('n', '<C-k>', ':m .-2<cr>==')
map('i', '<C-k>', '<esc>:m .-2<cr>==')
map('v', 'J', ":m '>+1<cr>gv=gv")
map('v', 'K', ":m '<-2<cr>gv=gv")
map('i', '<C-u>', '<C-w>')
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n', 'G', 'Gzz')
map('n', '{', '{zz')
map('n', '}', '}zz')
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-o>', '<C-o>zz')
map('n', '<leader>o', '<C-^>zz')
map("", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map("", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("", "H", 'v:count || mode(1)[0:1] == "no" ? "^" : "g^"', { expr = true })
map("", "L", 'v:count || mode(1)[0:1] == "no" ? "$" : "g$"', { expr = true })

-- --------------------------- Window Navigation ---------------------------------
map("n", "Sl", "<cmd>set splitright<CR><cmd>vsplit<CR>")
map("n", "Sj", "<cmd>set splitbelow<CR><cmd>split<CR>")
map("n", "<leader>h", "<C-W>h")
map("n", "<leader>j", "<c-W>j")
map("n", "<leader>k", "<c-W>k")
map("n", "<leader>l", "<C-W>l")
map("n", "<up>", "<cmd>res +5<cr>")
map("n", "<down>", "<cmd>res -5<cr>")
map("n", "<left>", "<cmd>vertical resize-5<cr>")
map("n", "<right>", "<cmd>vertical resize+5<cr>")

-- -------------------------------- Edititng -------------------------------------
map('n', '<leader>q', ':q<cr>')
map('n', '<leader>w', ':w<cr>')
map('i', ',f', '<Esc>/<++><CR>:nohlsearch<CR>c4l')
-- map('i', ',p', '')
map('n', ';;', '%')
-- map('n', '<', ',')
-- map('n', '>', ';')
map('i', ',', ',<C-g>u')
map('i', '.', '.<C-g>u')
map('i', '$', '$<C-g>u')
map('i', '{', '{<C-g>u')
map('i', '}', '}<C-g>u')
map('i', '<C-l>', '<c-g>u<Esc>[s1z=`]a<c-g>u')

-- ------------------------ Insert Mode Emacs-style mapping ----------------------
map('i', '<C-a>', '<Home>')
map('i', '<C-e>', '<End>')
map('i', '<C-p>', '<Up>')
map('i', '<C-n>', '<Down>')
map('i', '<C-b>', '<Left>')
map('i', '<C-f>', '<Right>')
map('i', '<C-d>', '<Esc>ls')

-- ----------------------------- Plugin Custom mappings --------------------------
-- ===============================================================================
map('n', '<leader>t', '<cmd>NvimTreeToggle <CR>')
map('n', '<leader>x', '<cmd>VimtexCompile<cr>')

-- buffers
map('n', ',1', '<cmd>BufferLineGoToBuffer 1 <cr>')
map('n', ',2', '<cmd>BufferLineGoToBuffer 2 <cr>')
map('n', ',3', '<cmd>BufferLineGoToBuffer 3 <cr>')
map('n', ',4', '<cmd>BufferLineGoToBuffer 4 <cr>')
map('n', ',x', '<cmd>BufferLinePickClose <cr>')

-- map('n', ',b', 'ysiw*.*')

-- map('n', '<leader>T', "<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>")

-- --------------------------------- Lsp mappings --------------------------------
-- lsp maping
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- map('n', 'gD', '<cmd>Lspsaga preview_definition<cr>')

map('n', 'gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<cr>")

map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')

map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- map('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>")
map('n', 'S', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
-- map('n', '<C-k>', '<cmd>Lspsaga signature_help<cr>')
-- map('n', '<c-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
-- map('n', '<c-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")

map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
-- map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>rn', '<cmd>Lspsaga rename<cr>')

map('n', '<space>ca', '<cmd>CodeActionMenu<CR>')
-- map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
-- map('n', '<space>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")
-- map('v', '<space>ca', "<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>")
-- map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
map('n', '<space>e', '<cmd>Lspsaga show_line_diagnostics<cr>')

map('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
