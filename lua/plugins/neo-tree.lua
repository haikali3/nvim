return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			-- Function to toggle Neo-tree
			local function toggle_neotree()
				if vim.bo.filetype == "neo-tree" then
					vim.cmd("Neotree close")
				else
					vim.cmd("Neotree filesystem reveal right")
				end
			end

			-- Set the keymap to toggle Neo-tree
			vim.keymap.set("n", "<C-n>", toggle_neotree, { noremap = true, silent = true })
			-- shift + h to show hidden files
		end,
	},
}
