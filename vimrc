set nocompatible

" === Plugins ===
call plug#begin()

try
  source ~/.vimrc.js/vimrc.plugs
  source ~/.vimrc.js/vimrc.plugs.local
catch
endtry

call plug#end()

syntax enable
set number

" === Plugin settings ===

" == Shougo/deoplete.nvim ==
" == carlitux/deoplete-ternjs ==
" let g:deoplete#enable_at_startup = 1
" let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = 0
" set completeopt-=preview

" " == neomake/neomake ==
let g:neomake_warning_sign = {
      \ 'text': '!',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '>>',
      \ 'texthl': 'ErrorMsg',
      \ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

autocmd! BufWritePost * Neomake

" == mxw/vim-jsx ==
let g:jsx_ext_required = 0


" === Keybindings ===

" == junegunn/fzf ==
nnoremap <C-T> :FZF<CR>
inoremap <C-T> <ESC>:FZF<CR>i

" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

try
  source ~/.vimrc.js/vimrc.local
catch
endtry
