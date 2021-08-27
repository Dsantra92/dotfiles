:nnoremap <silent> <space> :update<CR>
:nnoremap <C-A> ggVG
:nnoremap <C-1> :let @/=""

:let mapleader=";"
:nnoremap <silent> <Leader>h :noh<CR>
:nnoremap <silent> <Leader>qq :update q<CR>

:nnoremap <Leader>d daw
:nnoremap <Leader>c caw
:vnoremap <Leader>y "+y
:nnoremap <Leader>p "+p

:nnoremap <Leader>v :vsplit<CR>
:nnoremap <Leader>s :split<CR>

:nnoremap <A-1> 1gt
:nnoremap <A-2> 2gt
:nnoremap <A-3> 3gt
:nnoremap <A-4> 4gt
:nnoremap <A-5> 5gt
:nnoremap H gT
:nnoremap L gt
:nnoremap td  :tabclose<CR>

" LSP config (the mappings used in the default file don't quite work right)
:nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
:nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
:nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
:nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
:nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
:nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<cr>
:nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
:nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
