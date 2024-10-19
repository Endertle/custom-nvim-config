vim.wo.number = true -- Make line numbers default (default: false)
vim.o.relativenumber = true -- Set relative numbered lines (default: false)
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. (default: '')
vim.opt.fillchars = { eob = ' ' } -- Remove the ~ for empty lines
vim.opt.termguicolors = true

-- Set up indentation options
vim.opt.autoindent = true
vim.opt.smartindent = true
