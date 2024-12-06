require 'core.keymaps' -- Load general keymaps
require 'core.options' -- Load general options

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- require 'plugins.nvimtree',
  -- require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.oil',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocomplete',
  require 'plugins.none-ls',
  require 'plugins.indent-blankline',
  require 'plugins.misc',
  require 'plugins.gitsigns',
  require 'plugins.comment',
  require 'plugins.autotag',
  -- require 'plugins.tabout',
  require 'plugins.neoscroll',
  require 'plugins.surround',
  require 'plugins.lightbulb',
  require 'plugins.lazygit',
  require 'plugins.oil-git-status',

  require 'themes.one_monokai',
}
