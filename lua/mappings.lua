local map = vim.api.nvim_set_keymap
--
-- Better window navigation
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- Resize
-- " Use alt + hjkl to resize windows
map('n', '<A-j>', ':resize -2<CR>', {noremap = true, silent = true})
map('n', '<A-k>', ':resize +2<CR>', {noremap = true, silent = true})
map('n', '<A-h>', ':vertical resize -2<CR>', {noremap = true, silent = true})
map('n', '<A-l>', ':vertical resize +2<CR>', {noremap = true, silent = true})

-- Copy and paste
map('n', '<C-c>', '"+y', {noremap = true, silent = true})
map('n', '<A-c>', 'V"+y', {noremap = true, silent = true})

-- Select all
map('n', '<C-a>', 'ggVG', {noremap = true, silent = true})

-- Move faster
map('n', 'J', '5j', {noremap = true, silent = true})
map('n', 'K', '5k', {noremap = true, silent = true})

--Beggining and End
map('n', 'B', '^', {noremap = true, silent = true})
map('n', 'E', 'g_', {noremap = true, silent = true})
map('v', 'E', '^', {noremap = true, silent = true})
map('v', 'E', 'g_', {noremap = true, silent = true})

-- Better indenting
map('v', '>', '>gv', {noremap = true, silent = true})
map('v', '<', '<gv', {noremap = true, silent = true})

-- Buffer navigation
map('n', 'bn', ':bn<CR>', {noremap = true, silent = true})
map('n', 'bp', ':bp<CR>', {noremap = true, silent = true})
map('n', 'bd', ':bd<CR>', {noremap = true, silent = true})


-- I dont release Shift in time
vim.cmd(':command! -bar -bang WQ wq<bang>')
vim.cmd(':command! -bar -bang WQ wq<bang>')
vim.cmd(':command! -bar -bang Wq wq<bang>')
vim.cmd(':command! -bar -bang Wqa wqa<bang>')
vim.cmd(':command! -bar -bang W w<bang>')
vim.cmd(':command! -bar -bang Q q<bang>')
