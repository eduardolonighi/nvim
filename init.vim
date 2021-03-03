" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'itchyny/lightline.vim' " Status bar
    "Plug 'itchyny/vim-gitbranch' "git branch on status bar

    "tabline
    Plug 'pacha/vem-tabline'

    " Icons
    Plug 'ryanoasis/vim-devicons'

    " themes
    Plug 'itchyny/landscape.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'sonph/onehalf', {'rtp' : 'vim/'}
    Plug 'ajmwagar/vim-deus'
    Plug 'jdsimcoe/abstract.vim'
    Plug 'gilgigilgil/anderson.vim'
    Plug 'ayu-theme/ayu-vim'
    " Plug 'morhetz/gruvbox'
    Plug 'gruvbox-community/gruvbox'
    Plug 'dracula/vim' , { 'as': 'dracula' }
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'jacoborus/tender.vim'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'dikiaap/minimalist'
    Plug 'tomasr/molokai'
    Plug 'gosukiwi/vim-atom-dark'

    " VSode like autocompletion and other stuff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "syntax
    Plug 'sheerun/vim-polyglot' " includes everything
    " Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    " Plug 'peitalin/vim-jsx-typescript'
    " Plug 'pangloss/vim-javascript' " JS highlighting
    " Plug 'mxw/vim-jsx' "JSX syntax highlighting
    " Plug 'leafgarland/typescript-vim' "typescript
    " Plug 'ianks/vim-tsx' "TSX

    " Git
    Plug 'tpope/vim-fugitive'

    " Closetags
    " Plug 'alvan/vim-closetag'

    " undo tree
    Plug 'mbbill/undotree'

    " save witg sudo
    Plug 'lambdalisue/suda.vim'

    " Text navigation
    Plug 'easymotion/vim-easymotion'
    " Plug 'justinmk/vim-sneak'
    " Plug 'unblevable/quick-scope'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Multiple cursors
    " Plug 'terryma/vim-multiple-cursors'

    " Surround
    Plug 'tpope/vim-surround'

    " Repeat Stuff
    " Plug 'tpope/vim-repeat'

    " Better comments
    Plug 'preservim/nerdcommenter'

    " interactive code
    Plug 'metakirby5/codi.vim'

    "ranger file explorer
    Plug 'kevinhwang91/rnvimr'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    "zen mode
    Plug 'junegunn/goyo.vim'

    "vista
    Plug 'liuchengxu/vista.vim'

    "change to project root
    Plug 'airblade/vim-rooter'

    "fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    "key mappings
    Plug 'liuchengxu/vim-which-key'

    " ident guides
    " Plug 'nathanaelkane/vim-indent-guides'
    " Plug 'thaerkh/vim-indentguides'
    Plug 'Yggdroot/indentLine'

    " color parenthesis
    " Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'frazrepo/vim-rainbow'

    " sessions
    " Plug 'thaerkh/vim-workspace'
    Plug 'mhinz/vim-startify'

    "snippets
    Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

call plug#end()
" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif

set iskeyword+=-                      	" treat dash separated words as a word text object"
"set formatoptions-=cro                  " Stop newline continution of comments

  set autoread                             " update file if changed
  au CursorHold * checktime               " check autoread every 4s
  syntax enable                           " Enables syntax highlighing
  set hidden                              " Required to keep multiple buffers open multiple buffers
  " set bufhidden=delete                      " removes bufferss not displayed in a window
  " set showtabline=2                         " always show tab bar
  set wrap
  set linebreak
  set textwidth=0 wrapmargin=0
  " set nowrap                              " Display long lines as just one line
  set encoding=utf-8                      " The encoding displayed
  set pumheight=10                        " Makes popup menu smaller
  set pumblend=35                         " Popup menu transparency
  set fileencoding=utf-8                  " The encoding written to file
  set ruler              			            " Show the cursor position all the time
  set cmdheight=2                         " More space for displaying messages
  set mouse=a                             " Enable your mouse
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  set t_Co=256                            " Support 256 colors
  set conceallevel=0                      " So that I can see `` in markdown files
  set tabstop=2                           " Insert 2 spaces for a tab
  set shiftwidth=2                        " Change the number of space characters inserted for indentation
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent
  set laststatus=2                        " Always display the status line
  set number relativenumber               " relative numbers
  set nu rnu                              " current line number
  set cursorline                          " Enable highlighting of the current line
  set cursorcolumn
  " create swap dir if not exist
  if !isdirectory($HOME."/.config/nvim/swap")
    silent call mkdir($HOME."/.config/nvim/swap", "p")
  endif
  set dir=~/.config/nvim/swap/           " tell vim where to put swap files
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  set nobackup                            " This is recommended by coc
  set nowritebackup                       " This is recommended by coer
  set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
  set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
  set updatetime=300                      " Faster completion
  set timeoutlen=300                      " By default timeoutlen is 1000 ms
  set clipboard=unnamed                   " Copy paste between vim and everything else
  set incsearch
  "set guifont=Hack\ Nerd\ Font
  set termguicolors
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " set mmp=1300
  " set autochdir                           " Your working directory will always be the same as your working directory
  " set foldcolumn=2                        " Folding abilities

  " au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  "file types
  autocmd BufRead,BufNewFile .eslintrc,.babelrc,.prettierrc set filetype=json
  autocmd BufRead,BufNewFile *.js,*.jsx set filetype=typescriptreact
  autocmd BufRead,BufNewFile *.ts,*.tsx set filetype=typescriptreact

  " open everything in tabs
  " autocmd VimEnter * tab all
  " autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

    colorscheme ayu
    " popup menu (coc autocomplete)
    hi Pmenu     guifg=#ffffff guibg=#393939
    hi PmenuSel  guifg=#ffffff guibg=#666666

 let ayucolor='dark'
"let ayucolor='mirage'
"let ayucolor='light'

" let g:gruvbox_bold = 1
" " let g:gruvbox_italic =1
" " let g:gruvbox_underline=1
" " let g:gruvbox_undercurl=1
" " let g:gruvbox_termcolors=256
" let g:gruvbox_contrast_dark='hard'
" " let g:gruvbox_contrast_light='soft'
" " let g:gruvbox_hls_cursor='orange'
" " let g:gruvbox_number_column='NONE'
" " let g:gruvbox_sign_column='bg1'
" " let g:gruvbox_color_column='bg0'
" " let g:gruvbox_vert_split='bg0'
" let g:gruvbox_italicize_comments=1
" let g:gruvbox_invert_selection=0
" " let g:gruvbox_invert_ident_guides=0
" let g:gruvbox_invert_tabline=1
" " let g:gruvbox_improved_strings=1
" " let g:gruvbox_improved_warnings=1

    " popup is too clear on this theme
    " hi Pmenu     guifg=#ffffff guibg=#393939
    " hi PmenuSel  guifg=#ffffff guibg=#666666

" always show
let g:vem_tabline_show=2


" only display shown buffers when splits
let g:vem_tabline_multiwindow_mode=1

" show  buffer number
" let g:vem_tabline_show_number='buffnr'
" let g:vem_tabline_show_number='index'

" colors
" hi link VemTablineShown Visual
" hi link VemTablineNumberShown Visual
" highlight VemTablineNormal           term=reverse cterm=none ctermfg=0   ctermbg=251 guifg=#FAFAFA guibg=#3D4751 gui=none
" highlight VemTablineLocation         term=reverse cterm=none ctermfg=239 ctermbg=251 guifg=#666666 guibg=#cdcdcd gui=none
" highlight VemTablineNumber           term=reverse cterm=none ctermfg=239 ctermbg=251 guifg=FFFFFFF guibg=#3D4751  gui=none
" highlight VemTablineSelected         term=bold    cterm=bold ctermfg=0   ctermbg=255 guifg=#242424 guibg=#ABB0B6 gui=bold
" highlight VemTablineLocationSelected term=bold    cterm=none ctermfg=239 ctermbg=255 guifg=#666666 guibg=#ffffff gui=bold
" highlight VemTablineNumberSelected   term=bold    cterm=none ctermfg=239 ctermbg=255 guifg=#666666 guibg=#ABB0B6 gui=bold
" highlight VemTablineShown            term=reverse cterm=none ctermfg=0   ctermbg=251 guifg=#242424 guibg=#cdcdcd gui=none
" highlight VemTablineLocationShown    term=reverse cterm=none ctermfg=0   ctermbg=251 guifg=#666666 guibg=#cdcdcd gui=none
" highlight VemTablineNumberShown      term=reverse cterm=none ctermfg=0   ctermbg=251 guifg=#666666 guibg=#cdcdcd gui=none
" highlight VemTablineSeparator        term=reverse cterm=none ctermfg=246 ctermbg=251 guifg=#888888 guibg=#cdcdcd gui=none
" highlight VemTablinePartialName      term=reverse cterm=none ctermfg=246 ctermbg=251 guifg=#888888 guibg=#cdcdcd gui=none
" highlight VemTablineTabNormal        term=reverse cterm=none ctermfg=0   ctermbg=251 guifg=#242424 guibg=#4a4a4a gui=none
" highlight VemTablineTabSelected      term=bold    cterm=bold ctermfg=0   ctermbg=255 guifg=#242424 guibg=#ffffff gui=bold

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Switch to your current theme
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'gruvbox'
let g:airline_theme = 'deus'

" Sections
" let g:airline_section_c = ''
let g:airline_section_y = ''
let g:webdevicons_enable_airline_tabline = 1

let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

   " space is leader
let mapleader=" "

"no arrow key for training with hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"move faster
noremap J 5j
noremap K 5k

"begining and end of line
nnoremap B ^
nnoremap E $

" Better indenting
vnoremap < <gv
vnoremap > >gv

  " quit and save with capitals Q W (sometimes i dont release shift in time)
  :command! -bar -bang Q quit<bang>
  :command! -bar -bang W write<bang>
  :command! -bar -bang Wq wq<bang>
  :command! -bar -bang WQ wq<bang>
  :command! -bar -bang QQQ wqa<bang>

  " Select all
  nnoremap <C-a> ggVG

  "next tab
  noremap tn :tabn<CR>
  " previous tab
  noremap tp :tabp<CR>
  " move tab (expects position number)
  noremap tm :tabm
  " new tab
  noremap tt :tabnew
  " split tab
  noremap ts :tab split<CR>
  " close tab
  noremap tc :tabc<CR>

  "next buffer
  noremap bn :bn<CR>
  " previous buffer
  noremap bp :bp<CR>
  " delete buffer
  noremap bd :bd<CR>
  " list buffers
  noremap bl :Buffer<CR>

  " I hate escape more than anything else
  inoremap jk <Esc>
  inoremap kj <Esc>

  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>

  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Use alt + hjkl to resize windows
  nnoremap <silent> <M-j>    :resize -2<CR>
  nnoremap <silent> <M-k>    :resize +2<CR>
  nnoremap <silent> <M-h>    :vertical resize -2<CR>
  nnoremap <silent> <M-l>    :vertical resize +2<CR>

  nmap f <Plug>(easymotion-fl)
  nmap F <Plug>(easymotion-Fl)
  nmap t <Plug>(easymotion-tl)
  nmap T <Plug>(easymotion-Tl)
  nmap s <Plug>(easymotion-bd-w)

  " move selecction on visual mode
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv

  " copy with ctrl-c
  vnoremap <C-c> :w !xsel -i -b <CR><CR>

  " close <tags></tags>
  " inoremap ><Tab> ><Esc>F<lyt>o</<C-r>"><Esc>O<Space>
  " inoremap ><Tab>  ><Esc>F<lyt>f>a</<C-r>"><Esc>F>a
  " inoremap <C-t> <Esc>F<lywf>a</<C-r>"><Esc>F>a
  " exit insert, search bck <,move right, yank w, search >, insert </ paste yank, insert >, exit inster, search back <, clear search highlight, enter insert
  inoremap <C-t> <Esc>?<<cr>lyW/><cr>a</<C-r>"><Esc>?><cr>:noh<cr>a
  " nmap <silent><leader>c %lyWh%a</<C-r>"<Bs>><Esc>%i

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

function! Coc_show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" MAPPINGS
let g:which_key_map['/'] = [ '<plug>NERDCommenterToggle' , 'comment' ]
let g:which_key_map['='] = [ '<C-W>='                     , 'balance windows' ]
" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'v' : [':Vista!!'                , 'tag viewer'],
      \ 'b' : [':syntax on'    , 'reset colors'],
      \ 'B' : [':hi Normal ctermbg=NONE guibg=NONE<CR>', 'remove background'],
      \ 'i' : [':IndentLinesToggle'      , 'toggle indent guides'],
      \ 'p' : [':RainbowToggle'       , 'Color Parenthesis'],
      \ 'd' : [':set background=dark' , 'Dark  Background'],
      \ 'l' : [':set background=light', 'Light Background'],
      \ 'L' : [':set cursorline!',         'Toggle cursor line'],
      \ 'C' : [':set cursorcolumn!', 'Toggle cursor column']
      \ }
      " \ 'c' : [':ColorizerToggle'        , 'colorizer'],
" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }
nnoremap <silent> <leader>bt :bufdo tab split<CR>:tablast<CR>:tabclose<CR>:syntax on<CR>
let g:which_key_map.b.t ='buffers to tabs'
let g:which_key_map['B'] = [ 'Buffers'                    , 'buffer list']
" c is for close tag
  nmap <silent><leader>c %lyWh%a</<C-r>"<Bs>><Esc>%i
let g:which_key_map.c = 'close html tag'
let g:which_key_map['d'] = [ ':bd'                        , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ }
      " \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      " \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      " \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      " \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      " \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      " \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      " \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['j'] = [ '<Plug>(easymotion-bd-w)'    , 'jump to word' ]
let g:which_key_map['J'] = ['<Plug>(easymotion-s2)'       , 'jump with 2 chars' ]
" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp(coc)' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList --normal diagnostics'       , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'k' : [':call Coc_show_documentation()'           , 'show domunentation'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 'R' : ['<Plug>(coc-references)'              , 'references'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ 'v' : [':Vista!!'                            , 'tag viewer'],
      \ }
let g:which_key_map.m = {
      \ 'name' : 'move split',
      \ 'h' : ['<C-W>H', 'move left'],
      \ 'j' : ['<C-W>J', 'move down'],
      \ 'k' : ['<C-W>K', 'move up'],
      \ 'l' : ['<C-W>L', 'move right'],
      \ }
let g:which_key_map['o'] = [ 'append(line("."),   repeat([""], v:count1))', 'line below' ]
let g:which_key_map['O'] = [ 'append(line(".")-1,   repeat([""], v:count1))', 'line above' ]
let g:which_key_map['p'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['P'] = [ ':Commands'                  , 'commands' ]
let g:which_key_map['q'] = [ 'q'                          , 'quit' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 'l' : [':CocList floaterm'                               , 'list terminals']
      \ }
let g:which_key_map['u'] = [ 'UndotreeToggle'             , 'undo tree' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
" w is for workspaces
let g:which_key_map.w = {
      \ 'name': '+workspaces',
      \ 's'   : [':SSave!',                        'save session' ],
      \ 'l'   : [':SLoad'                          , 'load  session'],
      \ 'd'   : [':SDelete!'                        , 'delete session'],
      \ 'S'   : [':Startify'                       , 'start screen'],
      \ 'L'   : [':CocList sessions'               , 'session list'],
      \ }
"y is for yank
let g:which_key_map['y'] = [':CocList -A --normal yank', 'yank list']
let g:which_key_map['z'] = [ 'Goyo '                       , 'zen' ]

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Disable default mappings
let g:EasyMotion_do_mapping = 0
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

 let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_enabled = 0
let g:indentLine_setColors = 0

" " filenames like *.xml, *.html, *.xhtml, ...
" " These are the file extensions where this plugin is enabled.
" "
" let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'

" " filenames like *.xml, *.xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" "
" let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx,*.ts'

" " filetypes like xml, html, xhtml, ...
" " These are the file types where this plugin is enabled.
" "
" " let g:closetag_filetypes = 'html,xhtml,phtml'

" " filetypes like xml, xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" "
" let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,javascript.jsx,typescript,typescriptreact,typescript.tsx,javascript.js,typescript.jsx'

" " integer value [0|1]
" " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
" "
" let g:closetag_emptyTags_caseSensitive = 0

" " dictionary
" " Disables auto-close if not in a "valid" region (based on filetype)
" "
" " let g:closetag_regions = {
" "     \ 'typescript.tsx': 'jsxRegion,tsxRegion',
" "     \ 'javascript.jsx': 'jsxRegion',
" "     \ 'javascript': '',
" "     \ 'javascriptreact': '',
" "     \ }

" " autocmd BufNewFile,BufRead *.js,*.ts
" "       \ set filetype=typescript.tsx |
" "       \ set syntax=typescriptreact

" " Shortcut for closing tags, default is '>'
" "
" let g:closetag_shortcut='>'

let g:rainbow_active = 1

if has("persistent_undo")
  if !isdirectory($HOME."/.config/nvim/undodir")
    silent call mkdir($HOME."/.config/nvim/undodir", "p")
  endif
  set undodir=~/.config/nvim/undodir
  set undofile
endif

    let g:rooter_silent_chdir = 1

    let g:startify_session_dir = '~/.config/nvim/sessions'

  if !isdirectory($HOME."/.config/nvim/sessions")
    silent call mkdir($HOME."/.config/nvim/sessions", "p")
  endif

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent Files']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
      " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_bookmarks = []

let g:startify_files_number = 10

let g:startify_change_to_vcs_root = 1

let g:startify_session_sort = 1

let g:turtlePoem = [
      \ '                                   ____',
      \ '                                 /   () \',
      \ '                          .--.  |   //   |  .--.',
      \ '                         : (\ ". \ ____ / ." /) :',
      \ '                          ".    `   ||     `  ."',
      \ '                           /    _        _    \',
      \ '                          /     0}      {0     \',
      \ '                         |       /      \       |',
      \ '                         |      /        \     |',
      \ '                          \    |.  .==.  .|   /',
      \ '                           "._ \.  \__/  ./ _."',
      \ '                           /  ``"._-""-_."``  \',
      \ '==========================================================================',
      \ '  _____     ____                                          ____     _____  ',
      \ ' /      \  |  o |   See the TURTLE of  Enormous Girth    | o  |  /      \ ',
      \ '|        |/ ___\|    On his shell he holds the Earth     |/___ \|        |',
      \ '|_________/        His thought is slow, but always kind        \_________|',
      \ '|_|_| |_|_|          He holds us all within his mind           |_|_| |_|_|',
      \ '                                                                          ',
      \ '==========================================================================',
      \ ]
let g:startify_custom_header = 'startify#center(g:turtlePoem)'


" nnoremap <leader><leader>s :SSave!<CR>
" nnoremap <leader><leader>d :SDelete!<CR>
" nnoremap <leader><leader>S :Startify<CR>

" highlight StartifyBracket ctermfg=240
" highlight StartifyFooter  ctermfg=240
highlight StartifyHeader  ctermfg=114 guifg=#87d787
highlight StartifyNumber    ctermfg=14 guifg=#5CCFE6
" highlight StartifyPath    ctermfg=245
" highlight StartifySlash   ctermfg=240
" highlight StartifySpecial ctermfg=240
"
let g:startify_session_before_save = [
  \ 'echo "Cleaning up"',
  \ 'silent! Vista!',
  \ ]

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

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
  \ 'coc-marketplace',
  \ 'coc-yank',
  \ 'coc-todolist',
  \ 'coc-react-refactor',
  \ 'coc-docthis',
  \ 'coc-tag'
  \ ]

" only load eslint if module is present
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" use ctrl+j and ctro+k for navigate completion
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-h>"


" Use tab for scroll completions and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<S-tab>'

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" if exists('*complete_info')
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif

 " Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
" TODO: gi is used for go to the last pace you inserted
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" show documentation on hover
" function! ShowDocIfNoDiagnostic(timer_id)
" if (coc#util#has_float() == 0)
"   silent call CocActionAsync('doHover')
" endif
" endfunction


"
" function! s:show_hover_doc()
  " call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction
"
" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()


" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction

" Use leader K to show documentation in preview window.
" nnoremap <silent> <leader><leader>k :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


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

"  multiple cursors
  function! s:select_current_word()
    if !get(b:, 'coc_cursors_activated', 0)
      return "\<Plug>(coc-cursors-word)"
    endif
    return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
  endfunc

  nmap <C-LeftRelease>  <Plug>(coc-cursors-position)
  " nmap <M-LeftRelease> <Plug>(coc-cursors-word)

let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']

let g:vista#renderer#enable_icon = 1

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

 let g:vista#renderer#icons = {
 \   "function": "\uf794",
 \   "variable": "\uf71b",
 \  }

" Change the color
highlight CodiVirtualText guifg=red

let g:codi#virtual_text_prefix = "❯ "


let g:codi#aliases = {
   \ 'javascript.jsx': 'javascript',
   \ 'typescript.tsx': 'typescript',
   \ }

  let g:codi#interpreters = {
                   \ 'typescript': {
                       \ 'bin': 'tsun',
                       \ },
                   \ }

" let g:floaterm_wintype='normal'
" let g:floaterm_height=6

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1

" map <C-f> :Files<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>g :Rg<CR>
" nnoremap <leader>t :Tags<CR>
" nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
"-g '!{node_modules,.git}'

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   "rg --column --line-number --no-heading --color=always --smart-case --glob '!.git/**' ".shellescape(<q-args>), 1,

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" git gutter colors
highlight clear DiffAdd
highlight DiffAdd ctermfg=235 guifg=#98C379
highlight clear DiffChange
highlight DiffChange ctermfg=180 guifg=#E5C07B
highlight clear DiffDelete
highlight DiffDelete ctermfg=204 guifg=#E06C75
highlight clear DiffText
highlight DiffText ctermfg=180 guibg=#E5C07B
