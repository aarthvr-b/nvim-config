return {
  "rose-pine/neovim",
  lazy = false,
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({})
    vim.cmd.colorscheme("rose-pine")
  end
}
