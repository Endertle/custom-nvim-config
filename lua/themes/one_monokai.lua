return {
  'cpea2506/one_monokai.nvim',
  config = function()
    require('one_monokai').setup {
      transparent = false,
      colors = {
        fg = '#b2bec7', -- Lightened foreground color
        bg = '#121214', -- Slightly lighter background color
        gray = '#7c848e', -- Enhanced gray
        pink = '#f27a8d', -- Brighter pink
        green = '#a0d67d', -- More vibrant green
        cyan = '#63c8d5', -- Livelier cyan
        aqua = '#73b9f4', -- Brighter aqua
        yellow = '#f0d57f', -- More vivid yellow
        purple = '#d78ae3', -- Brighter purple
        peanut = '#f8e1c0', -- Livelier peanut color
        orange = '#d79f76', -- Enhanced orange
        dark_pink = '#ff2b97', -- Brightened dark pink
        dark_cyan = '#2f92c6', -- Brighter dark cyan
        red = '#ff6b6b', -- More vibrant red
        dark_red = '#d44d8d', -- Brighter dark red
        white = '#ffffff', -- Pure white for clarity
        light_gray = '#a6b1b8', -- Livelier light gray
        dark_gray = '#5e6671', -- Enhanced dark gray
        vulcan = '#3e4346', -- Slightly brighter vulcan
        dark_green = '#3b3d30', -- More vibrant dark green
        dark_blue = '#2e3239', -- Slightly brighter dark blue
        black = '#212529', -- Lighter black for contrast
        none = 'NONE',
      },
      themes = function(colors)
        return {
          NvimTreeFolderIcon = { link = 'Directory' },
          NvimTreeGitDirty = { fg = colors.yellow },
        }
      end,
      italics = true,
    }
    vim.cmd.colorscheme 'one_monokai'
  end,
}
