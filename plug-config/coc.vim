let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-actions',
  \ 'coc-emmet',
  \ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-explorer',
  \ 'coc-json',
  \ 'coc-lists',
  \ 'coc-spell-checker',
  \ 'coc-cspell-dicts',
  \ 'coc-tabnine',
  \ 'coc-prettier',
  \ 'coc-floaterm',
  \ 'coc-marketplace'
  \ ]

" only load eslint if module is present
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
  
" " Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" TODO: gi is used for go to the last pace you inserted
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" show documentation on hover
function! ShowDocIfNoDiagnostic(timer_id)
if (coc#util#has_float() == 0)
  silent call CocActionAsync('doHover')
endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

" Use leader K to show documentation in preview window.
nnoremap <silent> <leader><leader>k :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
 " nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction

" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
"<leader>a for the current selected range
"<leader>aw for the current word
"<leader>aas for the current sentence
"<leader>aap for the current paragraph
":h text-objects to see more detail

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Introduce class/struct/interface text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ic <Plug>(coc-classobj-i)
omap ac <Plug>(coc-classobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Mappings using CoCList:
" Show all diagnostics of current window.
" nnoremap <silent> <leader>?  :<C-u>CocList --normal diagnostics <cr>
" Show all diagnostics of workspace
" nnoremap <silent> <leader><leader>? :<C-u>CocAction('coc-diagnostic-list')
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
" nnoremap <silent> <leader><leader>p  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent> <leader>gs  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent> <leader><leader>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Find File
" nmap <leader>p :CocList files<CR>

" Open file explorer
" nmap <leader>e :CocCommand explorer<CR>
"
" git gutter colors
highlight clear DiffAdd
highlight DiffAdd ctermfg=235 guifg=#98C379
highlight clear DiffChange 
highlight DiffChange ctermfg=180 guifg=#E5C07B
highlight clear DiffDelete 
highlight DiffDelete ctermfg=204 guifg=#E06C75
highlight clear DiffText
highlight DiffText ctermfg=180 guibg=#E5C07B
