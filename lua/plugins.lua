-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("PACKET", { clear = true }),
	pattern = "plugin.lua",
	command = "source <afile> | PackerCompile"
})

return require("packer").startup(function(use)

	-- Packer
	use("wbthomason/packer.nvim")

	-- Common Utilities
	use("nvim-lua/plenary.nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use({
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('configs.treesitter')
		end,
		{ run = ':TSUpdate'}
	})

	-- LSP
	use ({
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	})
	use("theprimeagen/harpoon")

	-- Fugitive
	use ('tpope/vim-fugitive')

	-- Undo tree
	use('mbbill/undotree')

	-- Lua line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true
	}
}
end)
