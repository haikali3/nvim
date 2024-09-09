return {
	{
		"smjonas/inc-rename.nvim",
		config = function()
			require("inc_rename").setup({
				cmd_name = "IncRename",
				hl_group = "Substitute",
				preview_empty_name = false,
				show_message = true,
				input_buffer_type = "dressing",
				post_hook = nil,
			})
			vim.keymap.set("n", "<C-r>", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { expr = true })
		end,
	},
}
