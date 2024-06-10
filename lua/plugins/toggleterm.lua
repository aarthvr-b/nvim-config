return 
    {
{
"akinsho/toggleterm.nvim",
  version = "*",
  cmd = "ToggleTerm",
  config = true,
  keys = {
            { '<C-t>', '<cmd>Toggleterm<cr>', desc = 'Toggle floating terminal'}
          },
  opts = {
        open_mapping = [[<C-t>]],
        direction = 'float',
        shade_filetypes = {},
        hide_numbers = true,
        insert_mappings = true,
        terminal_mappings = true,
        start_in_insert = true,
        close_on_exit = true,
        shell = 'C:\\Users\\arthur.barbosa\\AppData\\Local\\Programs\\Git\\bin\\bash.exe'
      },
  },
}

