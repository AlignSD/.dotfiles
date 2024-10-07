require("align.core.init")
-- require 'align.plugins.mason'
--
require("align.lazy")
require("align.plugins")
--[[*********************************************************
*************** Transparent Background **********************
*********************************************************]]
--
vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--
-- NOTE: Here is where you install your plugins.
--require('lazy').setup({
--  --
--  require 'kickstart.plugins.debug',
--  require 'kickstart.plugins.indent_line',
--  require 'kickstart.plugins.lint',
--  require 'kickstart.plugins.autopairs',
--  require 'kickstart.plugins.neo-tree',
-- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
--
--
