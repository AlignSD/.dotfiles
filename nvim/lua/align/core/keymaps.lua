-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jj', '<ESC>', { desc = 'Remap esc' })

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- Increment/Decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment Number' })
keymap.set('n', '<leader>-', '<C-a>', { desc = 'Decrement Number' })

-- Window Management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split Window Vertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split Window Horizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make Splits Equal Size' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close Current Split' })

keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open New Tab' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close Current Tab' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go To Next Tab' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go To Previous Tab' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open Current Buffer In New Tab' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Center cursor after C-d/C-u
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center Cursor After Page Down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center Cursor After Page Up' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
