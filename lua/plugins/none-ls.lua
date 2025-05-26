return {
  "nvimtools/none-ls.nvim",
dependencies = {
    "nvimtools/none-ls-extras.nvim"
},
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort.with({
            command = vim.fn.stdpath("data") .. "/mason/bin/isort",
                }),
        require("none-ls.diagnostics.ruff").with({
            command = vim.fn.stdpath("data") .. "/mason/bin/ruff",
            extra_args = {
                        "--select", "D,E,F,W",
                        "--ignore", table.concat({
                            "D100",
                            "D101",
                            "D102",
                            "D103",
                            "D107",
                            "D205",
                            "D400",
                            "D401",
                        }, ","),
                    },
                }),
        null_ls.builtins.formatting.black.with({
            command = vim.fn.stdpath("data") .. "/mason/bin/black",
                }),
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
