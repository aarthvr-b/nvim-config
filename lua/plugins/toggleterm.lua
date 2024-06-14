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
        direction = 'horizontal',
        shade_filetypes = {},
        hide_numbers = true,
        insert_mappings = true,
        terminal_mappings = true,
        start_in_insert = true,
        close_on_exit = true,
        shade_terminals = true,
        shading_factor = 1,
        size = 18,
        persist_size = true,
      },
  },
}

