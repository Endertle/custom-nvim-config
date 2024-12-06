return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons

  config = function()
    require('oil').setup {
      float = {
        -- Padding around the floating window
        padding = 2,
        max_width = 70,
        max_height = 20,
        border = 'rounded',
        win_options = {
          winblend = 0,
        },
        -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
        get_win_title = nil,
        -- preview_split: Split direction: "auto", "left", "right", "above", "below".
        preview_split = 'auto',
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
      },
      default_file_explorer = true,
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
        win_options = {
          signcolumn = 'number',
        },
      },
      win_options = {
        signcolumn = 'yes:1',
      },
      keymaps = {
        ['-'] = { 'actions.close', mode = 'n' },
      },
    }

    vim.keymap.set('n', '-', require('oil').open_float, { desc = 'Open parent directory' })
  end,
}
