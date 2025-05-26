return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = "Add current buf to Harpoon"})
        vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end , {desc = "Open Harpoon Quick menu ui"})
        vim.keymap.set("n", "<C-h>", function()  harpoon:list():select(1) end , {desc = "Toggle first harpoon buf" } )
        vim.keymap.set("n", "<C-j>", function()  harpoon:list():select(2) end , {desc = "Toggle second harpoon buf" } )
        vim.keymap.set("n", "<C-k>", function()  harpoon:list():select(3) end , {desc = "Toggle third harpoon buf" } )
        vim.keymap.set("n", "<C-l>", function()  harpoon:list():select(4) end , {desc = "Toggle forth harpoon buf" } )
    end
}
