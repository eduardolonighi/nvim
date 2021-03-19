-- UI
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme bumbler]]
-- vim.cmd [[
  -- let g:ayucolor="light"
  -- silent! colorscheme ayu
  -- ]]
vim.o.cmdheight = 2
vim.o.t_Co = '256'
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.scrolloff = 5
vim.o.sidescrolloff = 15
vim.o.laststatus = 2
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.o.fillchars = 'vert:│'
vim.o.showmode = false
--vim.wo.foldcolumn = '1'
-- vim.wo.signcolumn='auto:1-3'
-- vim.wo.signcolumn='yes'
vim.wo.signcolumn='yes:2'

--wrapping and tabs
vim.wo.wrap = false
vim.bo.textwidth = 80
vim.wo.colorcolumn = '81'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true


-- Behaviour
vim.o.hidden = true
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.mouse = 'a'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.clipboard = 'unnamed'
vim.o.updatetime = 300
vim.o.timeoutlen = 300
--persistent undo
vim.cmd([[
if has("persistent_undo")
  if !isdirectory($HOME."/.config/nvim/undodir")
    silent call mkdir($HOME."/.config/nvim/undodir", "p")
  endif
  set undodir=~/.config/nvim/undodir
  set undofile
endif
]])
-- highlight yank
vim.api.nvim_command('augroup YankHighlight')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd TextYankPost * silent! lua require"vim.highlight".on_yank()')
vim.api.nvim_command('augroup END')

-- Lsp And Autocomplete
vim.o.completeopt = "menuone,noselect"


