return {
	{
		"numToStr/Comment.nvim",

    --  INSERT MODE
		-- `gcc` - Toggles the current line using linewise comment
		-- `gbc` - Toggles the current line using blockwise comment
		-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
		-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
		-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
		-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment

		-- VISUAL MODE
		-- `gc` - Toggles the region using linewise comment
		-- `gb` - Toggles the region using blockwise comment
		opts = {
			-- add any options here
		},
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
    -- This plugin sets the commentstring based on the cursor position in a typescript file
	},
}
