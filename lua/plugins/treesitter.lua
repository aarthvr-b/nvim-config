return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            autoinstall = true,
            highlight = { enable= true },
            indent = { enable = true },
            ensure_installed = {"json",
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
					        "vimdoc",}
        })
    end
}
