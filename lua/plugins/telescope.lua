return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {  
        'nvim-lua/plenary.nvim',
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim"
     },

config = function()
      require('telescope').setup({})
      
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "Telescope find files"})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Telescope find Git Files"})
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, {desc = "Telescope Live grep"})
      vim.keymap.set('n', '<leader>pt', "<cmd>TodoTelescope<cr>", {desc = "Find todos"})
  end
  },
  {'nvim-telescope/telescope-ui-select.nvim',
   config = function ()
    require("telescope").setup( {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
          }
        }
      }
    })
require("telescope").load_extension("ui-select")
    end
  },
}
