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


vim.g.mapleader = " "


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex , { desc = "Open file explorer"})

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"})
vim.keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally"})
vim.keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make split equal size"})
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Close current split"})

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "close tab"})
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "go to next tab"})
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "go to prev tab"})



vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "Format current Buf"})

