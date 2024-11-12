return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
						"json",
					        "javascript",
					        "typescript",
					        "tsx",
					        "yaml",
					        "html",
					        "css",
					        "markdown",
					        "markdown_inline",
					        "graphql",
					        "bash",
					        "lua",
					        "vim",
					        "dockerfile",
					        "gitignore",
					        "query",
					        "vimdoc",
						"lua_ls",
						"pyright",
						"terraformls",
						"tflint" },
			}
		)
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.terraformls.setup({
				capabilities = capabilities,
			})

			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
