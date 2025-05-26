return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- configure lualine with modified theme
		lualine.setup({
            sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = {
						"filename",
						{
							"diagnostics",
							sources = {
								"nvim_lsp",
								"nvim_diagnostic",
							},
						},
					},
					lualine_x = {
						{
							"filetype",
							colored = true,
						},
					},
					lualine_y = {
						"harpoon2",
					},
					lualine_z = { "location" },
				},
			-- sections = {
			-- 	{
			-- 		lualine_a = { "mode" },
			-- 		lualine_b = { "branch", "diff", "diagnostics" },
			-- 		lualine_c = { { "filename" }, { "harpoon2" } },
			-- 		lualine_x = {
			-- 			{
			-- 				lazy_status.updates,
			-- 				cond = lazy_status.has_updates,
			-- 				-- color = { fg = "#ff9e64" },
			-- 			},
			-- 			{ "encoding" },
			-- 			{ "fileformat" },
			-- 			{ "filetype" },
			-- 		},
			-- 	},
			--
			-- 	lualine_y = { "progress" },
			-- 	lualine_z = { "location" },
			-- },
		})
	end,
}
