return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    local parentDir = {
      function()
        local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':t') -- Extract parent directory name
        return dir_name ~= '' and dir_name or '[No Directory]' -- Fallback if there's no directory
      end,
      icon = '', -- Optional folder icon (remove if not needed)
    }

    local colors = {
      fg = '#b2bec7', -- Lightened foreground color
      bg = '#121214', -- Slightly lighter background color
      pink = '#f27a8d', -- Brighter pink
      green = '#a0d67d', -- More vibrant green
      yellow = '#f0d57f', -- More vivid yellow
      aqua = '#73b9f4', -- Brighter aqua
      purple = '#d78ae3', -- Brighter purple
      dark_cyan = '#2f92c6', -- Brighter dark cyan
      vulcan = '#3e4346', -- Slightly brighter vulcan
      dark_blue = '#2e3239', -- Slightly brighter dark blue
      black = '#212529', -- Lighter black for contrast
    }
    local custom_one_monokai = {
      normal = {
        a = { fg = colors.dark_blue, bg = colors.aqua, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.vulcan },
        c = { fg = colors.fg, bg = colors.black },
      },
      insert = {
        a = { fg = colors.dark_blue, bg = colors.green, gui = 'bold' },
      },
      visual = {
        a = { fg = colors.dark_blue, bg = colors.purple, gui = 'bold' },
      },
      command = {
        a = { fg = colors.dark_blue, bg = colors.yellow, gui = 'bold' },
      },
      replace = {
        a = { fg = colors.dark_blue, bg = colors.pink, gui = 'bold' },
      },
      inactive = {
        a = { fg = colors.fg, bg = colors.black },
        b = { fg = colors.fg, bg = colors.black, gui = 'bold' },
        c = { fg = colors.fg, bg = colors.black },
      },
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = custom_one_monokai, -- Set theme based on environment variable
        -- Some useful glyphs:
        -- https://www.nerdfonts.com/cheat-sheet
        --        
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'alpha', 'neo-tree' },
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { filename },
        lualine_c = { 'branch' },
        lualine_x = { diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width } },
        lualine_y = { parentDir },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}
