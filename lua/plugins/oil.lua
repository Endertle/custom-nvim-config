return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons

  config = function ()
require('oil').setup({
default_file_explorer = true,
delete_to_trash = true,
view_options = {
	show_hidden = true }

})

vim.keymap.set("n", "-",require('oil').open, { desc = "Open parent directory" })
end
}
