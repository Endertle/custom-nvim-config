vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. (default: '')
vim.opt.cursorline = false

-- Numbers
vim.wo.number = true -- Make line numbers default (default: false)
vim.o.relativenumber = true -- Set relative numbered lines (default: false)
vim.opt.ruler = false
vim.numberwidth = 2

-- Set up indentation options
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.fillchars = { eob = ' ' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'

-- 256 colorspace
vim.g.base16_colorspace = 256
vim.g.base16_background_transparent = 1

-- disable nvim intro
vim.opt.shortmess:append 'sI'
vim.opt.signcolumn = 'yes'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.timeoutlen = 400
vim.opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
vim.opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append '<>[]hl'
