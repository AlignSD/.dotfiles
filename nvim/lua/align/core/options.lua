vim.cmd 'let g:netrw_liststyle = 3'

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- Spaces per tab
opt.shiftwidth = 2 -- Spacer for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copt indent from current line to next line
opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character

opt.wrap = false -- line wrap

-- Search Settings
opt.ignorecase = true
opt.smartcase = true -- If you use upper and lower case in the search string search becomes case sens.

opt.cursorline = true

-- Themes
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes' -- show sign column so that text doesn't shift

-- Backspace
opt.backspace = 'indent,eol,start' -- allow backspace on indent, eol or insert mode start pos

-- Clipboard
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Split Windows
opt.splitright = true
opt.splitbelow = true
-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
--vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
