local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	checker = {
		enabled = true,
		notify = false,
	},
	chage_detection = {
		notify = false,
	},
	--  {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
	--},
	-- Paths To Plugin Folders
	{ import = "align.plugins" },
	{ import = "align.plugins.lsp" },
	--  require 'kickstart.plugins.debug',
	--  require 'kickstart.plugins.indent_line',
	--  require 'kickstart.plugins.lint',
	--  require 'kickstart.plugins.autopairs',
	--  require 'kickstart.plugins.neo-tree',

	-- require 'kickstart.plugins.gitsignns' -- adds gitsigns recommended keymaps
})
