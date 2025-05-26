vim.opt.nu = true
vim.opt.relativenumber = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.spelllang = { "en" }

vim.opt.listchars = {
	tab = "→ ",
	lead = "⸱",
	trail = "•",
	nbsp = "␣",
}
vim.opt.fileformats = { "unix" }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex , { desc = "Open file explorer"})
vim.keymap.set("n", "<leader>bd", ":bd<CR>", {desc = "Delete current buffer"})

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "Format current Buf"})

