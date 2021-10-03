
" nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>

nnoremap <silent> gr <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

nnoremap <silent>gn :Lspsaga rename<CR>

nnoremap <silent> gd :Lspsaga preview_definition<CR>

nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>

