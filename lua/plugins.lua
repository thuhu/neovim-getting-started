-- Automatically run: PackerCompile
	
vim.api.nvim_create_autocmd("BufWritePost", {
				group = vim.api.nvim_create_augroup("PACKET", { clear = true }),
				pattern = "plugin.lua",
				command = "source <afile> | PackerCompile"
})

return require("packer").startup(function(use)
    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
         tag = "0.1.1",
         requires = { { "nvim-lua/plenary.nvim" } },
    })
end)
