nnoremap ; :

nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

nnoremap <C-f> :Lines <CR>
nnoremap <leader><C-f> :Ag <CR> 

nnoremap <leader><Tab> :Buffers <CR>

nnoremap <leader><C-s> :bd <CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>

vnoremap <c-f> y<ESC>/<c-r>"<CR>   
vnoremap <leader><c-f> y<ESC> :Ag <c-r>"<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

nnoremap <leader>ff <cmd>Files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>, viw

vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

nnoremap <silent><leader>a :CodeActionMenu<CR>
vnoremap <silent><leader>a :<C-U>CodeActionMenu<CR>

nnoremap <silent>K :Lspsaga hover_doc<CR>

nnoremap <C-r> :Lspsaga rename<CR>

nnoremap <silent>gd <cmd>lua require('goto-preview').goto_preview_definition()<CR>

nnoremap <silent> gh <cmd>lua require('goto-preview').goto_preview_references()<CR>
nnoremap <silent> gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>

nnoremap <silent> gs :Lspsaga signature_help<CR>

nnoremap <silent> [e :Trouble<CR>
nnoremap <silent> ]e :TroubleClose<CR>

nnoremap <leader>S :lua require('spectre').open()<CR>

nnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>
vnoremap <silent> <leader>rn <cmd>lua require('renamer').rename()<cr>

nnoremap 0 ^

" Move to previous/next
nnoremap <silent> <leader>n :BufferNext<CR>
nnoremap <silent> <leader>p :BufferPrevious<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
