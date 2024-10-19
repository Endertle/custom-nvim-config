return {
  'cpea2506/one_monokai.nvim',
  config = function()
    require('one_monokai').setup {
      transparent = false,
      colors = {
        fg = '#b2bec7',
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

        -- fg = '#d9e2ec', -- Vibrant foreground color
        -- bg = '#121214', -- Deep background color
        -- gray = '#aab8c4', -- Rich gray
        -- pink = '#ff4e80', -- Bold pink
        -- green = '#76e09a', -- Vivid green
        -- cyan = '#6bf1f4', -- Bright cyan
        -- aqua = '#7dd5f4', -- Striking aqua
        -- yellow = '#ffed7e', -- Bright yellow
        -- purple = '#c38dff', -- Lively purple
        -- peanut = '#fbd4b4', -- Warm peanut color
        -- orange = '#ff9e5c', -- Bright orange
        -- dark_pink = '#ff2d8c', -- Eye-catching dark pink
        -- dark_cyan = '#3cb1e0', -- Bold dark cyan
        -- red = '#ff4c4c', -- Intense red
        -- dark_red = '#d31c5d', -- Rich dark red
        -- white = '#ffffff', -- Crisp white for clarity
        -- light_gray = '#b0c4cc', -- Bright light gray
        -- dark_gray = '#7a8c92', -- Strong dark gray
        -- vulcan = '#4f5459', -- Deepened vulcan
        -- dark_green = '#4b4e40', -- Vivid dark green
        -- dark_blue = '#383c42', -- Deep dark blue
        -- black = '#1d1f21', -- Softer black for contrast
        -- none = 'NONE',
      },
      themes = function(colors)
        return {
          -- nvim tree
          NvimTreeFolderIcon = { link = 'Directory' },
          NvimTreeGitDirty = { fg = colors.yellow },

          -- diagnostic
          DiagnosticHint = { fg = colors.purple },
          DiagnosticUnderlineHint = { sp = colors.purple, underline = true },

          ['@keyword.function'] = { fg = colors.cyan },
        }
      end,
      italics = true,
    }
    vim.cmd.colorscheme 'one_monokai'
  end,
}
