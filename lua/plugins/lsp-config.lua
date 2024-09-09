return {
  {
    "williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"ruff_lsp",
					-- "tsserver",
          "ts_ls",
					"eslint",
					"tailwindcss",
					"emmet_language_server",
					"jsonls",
				},
			})

			require("mason-lspconfig").setup()

			-- automatically install ensure_installed servers
			require("mason-lspconfig").setup_handlers({
				-- Will be called for each installed server that doesn't have
				-- a dedicated handler.
				--
				function(server_name) -- default handler (optional)
					-- https://github.com/neovim/nvim-lspconfig/pull/3232
					if server_name == "tsserver" then
						server_name = "ts_ls"
					end
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({

						capabilities = capabilities,
					})
				end,
			})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- JavaScript/TypeScript/React
      -- later change ts server to ts_ls
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>n", vim.lsp.buf.rename, {})
    end,
  },
}
